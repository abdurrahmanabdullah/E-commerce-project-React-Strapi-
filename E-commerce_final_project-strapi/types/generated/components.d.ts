import type { Schema, Attribute } from '@strapi/strapi';

export interface CardContentCard extends Schema.Component {
  collectionName: 'components_card_content_cards';
  info: {
    displayName: 'card';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.Text;
    button: Attribute.String;
  };
}

export interface CardContentCartContent extends Schema.Component {
  collectionName: 'components_card_content_cart_contents';
  info: {
    displayName: 'cart-content';
  };
  attributes: {
    logo: Attribute.Media;
    title: Attribute.String;
    subtitle: Attribute.Text;
  };
}

export interface ContactContact extends Schema.Component {
  collectionName: 'components_contact_contacts';
  info: {
    displayName: 'contact';
    description: '';
  };
  attributes: {
    name: Attribute.String;
    image: Attribute.Media;
    address: Attribute.String;
    telephone: Attribute.String;
    mobile: Attribute.String;
    website: Attribute.String;
    footer: Attribute.String;
  };
}

export interface ContentBlog extends Schema.Component {
  collectionName: 'components_content_blogs';
  info: {
    displayName: 'blog';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    subheading: Attribute.Text;
    image: Attribute.Media;
  };
}

export interface ContentContent extends Schema.Component {
  collectionName: 'components_content_contents';
  info: {
    displayName: 'content';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    subheading: Attribute.Text;
  };
}

export interface ContentElement extends Schema.Component {
  collectionName: 'components_content_elements';
  info: {
    displayName: 'element';
    description: '';
  };
  attributes: {
    heading: Attribute.String;
    list: Attribute.Component<'content.list', true>;
  };
}

export interface ContentHero extends Schema.Component {
  collectionName: 'components_content_heroes';
  info: {
    displayName: 'Hero';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.Text;
    button: Attribute.String;
  };
}

export interface ContentImg extends Schema.Component {
  collectionName: 'components_content_imgs';
  info: {
    displayName: 'img';
    description: '';
  };
  attributes: {
    image: Attribute.Media;
  };
}

export interface ContentList extends Schema.Component {
  collectionName: 'components_content_lists';
  info: {
    displayName: 'list';
  };
  attributes: {
    item: Attribute.String;
  };
}

export interface HomeCard2 extends Schema.Component {
  collectionName: 'components_home_card2s';
  info: {
    displayName: 'card2';
  };
  attributes: {
    logo: Attribute.Media;
    title: Attribute.String;
    subtitle: Attribute.Text;
  };
}

export interface HomeHeroCard extends Schema.Component {
  collectionName: 'components_home_hero_cards';
  info: {
    displayName: 'Hero-card';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.Text;
  };
}

export interface HomeHero extends Schema.Component {
  collectionName: 'components_home_heroes';
  info: {
    displayName: 'Hero';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.Text;
    HeroCard: Attribute.Component<'home.hero-card', true>;
  };
}

export interface HomeHome extends Schema.Component {
  collectionName: 'components_home_homes';
  info: {
    displayName: 'Home';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.Text;
    banner: Attribute.Media;
  };
}

export interface HomeLogoText extends Schema.Component {
  collectionName: 'components_home_logo_texts';
  info: {
    displayName: 'logo-text';
  };
  attributes: {
    img: Attribute.Media;
    name: Attribute.String;
  };
}

export interface HomePool extends Schema.Component {
  collectionName: 'components_home_pools';
  info: {
    displayName: 'pool';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.Text;
    logoText: Attribute.Component<'home.logo-text', true>;
  };
}

export interface HomeServices extends Schema.Component {
  collectionName: 'components_home_services';
  info: {
    displayName: 'services';
  };
  attributes: {
    title: Attribute.String;
    subtitle: Attribute.Text;
    card2: Attribute.Component<'home.card2', true>;
  };
}

export interface ProductDescription extends Schema.Component {
  collectionName: 'components_product_descriptions';
  info: {
    displayName: 'Description';
  };
  attributes: {
    heading: Attribute.String;
    subheading: Attribute.Text;
  };
}

export interface ProductKeyFeatures extends Schema.Component {
  collectionName: 'components_product_key_features';
  info: {
    displayName: 'key_features';
    icon: 'bulletList';
    description: '';
  };
  attributes: {
    Resolution: Attribute.String;
    Display: Attribute.String;
    port: Attribute.String;
    Brand: Attribute.String;
    Model: Attribute.String;
  };
}

export interface SharedMetaSocial extends Schema.Component {
  collectionName: 'components_shared_meta_socials';
  info: {
    displayName: 'metaSocial';
    icon: 'project-diagram';
  };
  attributes: {
    socialNetwork: Attribute.Enumeration<['Facebook', 'Twitter']> &
      Attribute.Required;
    title: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 60;
      }>;
    description: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 65;
      }>;
    image: Attribute.Media;
  };
}

export interface SharedSeo extends Schema.Component {
  collectionName: 'components_shared_seos';
  info: {
    displayName: 'seo';
    icon: 'search';
  };
  attributes: {
    metaTitle: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        maxLength: 60;
      }>;
    metaDescription: Attribute.String &
      Attribute.Required &
      Attribute.SetMinMaxLength<{
        minLength: 50;
        maxLength: 160;
      }>;
    metaImage: Attribute.Media;
    metaSocial: Attribute.Component<'shared.meta-social', true>;
    keywords: Attribute.Text;
    metaRobots: Attribute.String;
    structuredData: Attribute.JSON;
    metaViewport: Attribute.String;
    canonicalURL: Attribute.String;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'card-content.card': CardContentCard;
      'card-content.cart-content': CardContentCartContent;
      'contact.contact': ContactContact;
      'content.blog': ContentBlog;
      'content.content': ContentContent;
      'content.element': ContentElement;
      'content.hero': ContentHero;
      'content.img': ContentImg;
      'content.list': ContentList;
      'home.card2': HomeCard2;
      'home.hero-card': HomeHeroCard;
      'home.hero': HomeHero;
      'home.home': HomeHome;
      'home.logo-text': HomeLogoText;
      'home.pool': HomePool;
      'home.services': HomeServices;
      'product.description': ProductDescription;
      'product.key-features': ProductKeyFeatures;
      'shared.meta-social': SharedMetaSocial;
      'shared.seo': SharedSeo;
    }
  }
}
