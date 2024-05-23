class Rick {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Location? origin;
  Location? location;
  String? image;
  List<String>? episode;
  String? url;
  DateTime? created;

  Rick({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'status': status,
        'species': species,
        'type': type,
        'gender': gender,
        'origin': origin,
        'location': location,
        'image': image,
        'episode': episode,
        'url': url,
        'created': created,
      };

  void fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    origin = json['origin'];
    location = json['location'];
    image = json['image'];
    episode = json['episode'];
    url = json['url'];
    created = json['created'];
  }
}

class Location {
  String? name;
  String? url;

  Location({
    this.name,
    this.url,
  });
}
