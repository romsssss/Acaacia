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


# Projects
projects = Project.create!([
  {
    name: 'Lambic et bière de terroir !',
    description: "Fermentation spontanée, malt local, recherches sur les houblons: des bières au service d'un lieu culturel...",
    amount: 1100,
    category: categories[2]
  }, {
    name: 'Un labo pour nos escargots',
    description: 'Les Escargots de Lassouts ont besoin de votre aide, pour être transformés sur place et pour pouvoir élaborer de nouvelles recettes.',
    amount: 5000,
    category: categories[4]
  }, {
    name: 'Les coques de Cabourg',
    description: "Contribuez à l'édition limitée d'un livre destiné à donner naissance à ce qui pourrait bien devenir LA spécialité gastronomique de Cabourg.",
    amount: 3500,
    category: categories[1]
  }
])

