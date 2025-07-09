import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon_model.dart';

class PokemonService {
  static const _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<Pokemon>> fetchPokemon() async {
    final response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> pokemonJson = data['pokemon'];
      return pokemonJson.map((p) => Pokemon.fromJson(p)).toList();
    } else {
      throw Exception('Failed to load Pokémon');
    }
  }
}
