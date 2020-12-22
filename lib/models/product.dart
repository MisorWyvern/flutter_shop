class Product {
  String _titulo;
  int _preco;
  String _foto;
  String _descricao;

  Product({String titulo, int preco, String foto, String descricao}) {
    this._titulo = titulo;
    this._preco = preco;
    this._foto = foto;
    this._descricao = descricao;
  }

  String get titulo => _titulo;
  set titulo(String titulo) => _titulo = titulo;
  int get preco => _preco;
  set preco(int preco) => _preco = preco;
  String get foto => _foto;
  set foto(String foto) => _foto = foto;
  String get descricao => _descricao;
  set descricao(String descricao) => _descricao = descricao;

  Product.fromJson(Map<String, dynamic> json) {
    _titulo = json['titulo'];
    _preco = json['preco'];
    _foto = json['foto'];
    _descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this._titulo;
    data['preco'] = this._preco;
    data['foto'] = this._foto;
    data['descricao'] = this._descricao;
    return data;
  }
}
