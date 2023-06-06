import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProductFormScreen extends StatefulWidget {
  const ProductFormScreen({Key? key}) : super(key: key);

  @override
  _ProductFormScreenState createState() => _ProductFormScreenState();
}

class _ProductFormScreenState extends State<ProductFormScreen> {
  final _formKey = GlobalKey<FormState>();

  String _productName = '';
  String _productDetail = '';
  String _productSize = '';
  String _productMeasurement = '';
  int _productStock = 0;
  List<String> _productImages = [];

  Future<void> _uploadImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final storageRef = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('product_images')
          .child(DateTime.now().millisecondsSinceEpoch.toString());

      final uploadTask = storageRef.putFile(File(pickedFile.path));
      final snapshot = await uploadTask;

      final downloadURL = await snapshot.ref.getDownloadURL();

      setState(() {
        _productImages.add(downloadURL);
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Guarda los datos del producto en Firestore
      FirebaseFirestore.instance.collection('articulos').add({
        'nombre': _productName,
        'detalle': _productDetail,
        'talle': _productSize,
        'medida': _productMeasurement,
        'stock': _productStock,
        'imagenes': _productImages,
      });

      // Limpia los campos del formulario
      _formKey.currentState!.reset();
      _productImages.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Producto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa el nombre del producto';
                  }
                  return null;
                },
                onSaved: (value) {
                  _productName = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Detalle'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa el detalle del producto';
                  }
                  return null;
                },
                onSaved: (value) {
                  _productDetail = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Talle'),
                onSaved: (value) {
                  _productSize = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Medida'),
                onSaved: (value) {
                  _productMeasurement = value!;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Stock'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingresa el stock del producto';
                  }
                  return null;
                },
                onSaved: (value) {
                  _productStock = int.parse(value!);
                },
              ),
              ElevatedButton(
                onPressed: _uploadImage,
                child: const Text('Subir Imagen'),
              ),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Guardar Producto'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
