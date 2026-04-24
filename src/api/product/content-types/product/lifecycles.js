const generateSlug = (text) => {
  return text
    .toString()
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .trim()
    .replace(/\s+/g, '-')
    .replace(/[^\w-]+/g, '')
    .replace(/--+/g, '-');
};

module.exports = {
  async beforeCreate(event) {
    const { data } = event.params;
    if (data.name) {
      data.slug = data.slug || generateSlug(data.name);
    }
  },

  async beforeUpdate(event) {
    const { data } = event.params;
    if (data.name && !data.slug) {
      data.slug = generateSlug(data.name);
    }
  },
};