import 'package:june/june.dart';

class RegisterDataVM extends JuneState {
  String email = '';
  String nama = '';
  String jenisKelamin = '';
  String tanggalLahir = '';
  String noTelp = '';
  String noTelpDarurat = '';
  String username = '';
  String password = '';

  register1({required String email, required String nama, required String jenisKelamin, required String tanggalLahir, required String noTelp}) {
    this.email = email;
    this.nama = nama;
    this.jenisKelamin = jenisKelamin;
    this.tanggalLahir = tanggalLahir;
    this.noTelp = noTelp;
    setState();
  }

  register2({required String noTelpDarurat, required String username, required String password}) {
    this.noTelpDarurat = noTelpDarurat;
    this.username = username;
    this.password = password;
    setState();
  }
  
}
