# Categories
categories = Category.create!([
  { name: 'Apiculture' },
  { name: 'Aquaculture & Pêche' },
  { name: 'Boissons alcoolisées' },
  { name: 'Boissons non alcoolisées' },
  { name: 'Elevage' },
  { name: 'Epicerie salée' },
  { name: 'Epicerie sucrée' },
  { name: 'Horticulture' },
  { name: 'Innovation' },
  { name: 'Nature & Environnement' },
  { name: 'Produits laitiers' },
  { name: 'Viticulture' }
])

locations = Location.create!([
  { latitude: 48.8534100, longitude: 2.3488000 }, # Paris
  { latitude: 49.2911, longitude: -0.1133 }, # Cabourg
  { latitude: 46.603, longitude: 1.981 } # Montgivray
])


# Projects
projects = Project.create!([
  {
    name: 'Lambic et bière de terroir !',
    description: "Fermentation spontanée, malt local, recherches sur les houblons: des bières au service d'un lieu culturel...",
    amount: 1100,
    category: categories[2],
    location: locations[2]
  }, {
    name: 'Un labo pour nos escargots',
    description: 'Les Escargots de Lassouts ont besoin de votre aide, pour être transformés sur place et pour pouvoir élaborer de nouvelles recettes.',
    amount: 5000,
    category: categories[4],
    location: locations[0]
  }, {
    name: 'Les coques de Cabourg',
    description: "Contribuez à l'édition limitée d'un livre destiné à donner naissance à ce qui pourrait bien devenir LA spécialité gastronomique de Cabourg.",
    amount: 3500,
    category: categories[1],
    location: locations[1]
  }
])

