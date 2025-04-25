import type { Attribute, Schema } from '@strapi/strapi';

export interface ApisFilters extends Schema.Component {
  collectionName: 'components_apis_filters';
  info: {
    icon: 'bezier-curve';
    name: 'Filters';
  };
  attributes: {
    orderByName: Attribute.String;
    pagination: Attribute.Component<'apis.pagination'>;
    projectTypeName: Attribute.String;
    solutionName: Attribute.String;
    statusName: Attribute.String;
    tagsName: Attribute.String;
    versionName: Attribute.String;
  };
}

export interface ApisPagination extends Schema.Component {
  collectionName: 'components_apis_paginations';
  info: {
    icon: 'compress';
    name: 'Pagination';
  };
  attributes: {
    firstName: Attribute.String;
    secondName: Attribute.String;
  };
}

export interface CardsCard extends Schema.Component {
  collectionName: 'components_cards_cards';
  info: {
    description: '';
    icon: 'sim-card';
    name: 'card';
  };
  attributes: {
    description: Attribute.Text;
    descriptionFooter: Attribute.String;
    descriptionHeader: Attribute.String;
    icon: Attribute.String;
    image: Attribute.Media<'images' | 'files' | 'videos'>;
    LinkName: Attribute.String;
    LinkUrl: Attribute.String;
    steps: Attribute.JSON;
    timeRead: Attribute.String;
    title: Attribute.String;
    titleFooter: Attribute.String;
    version: Attribute.String;
  };
}

export interface CardsCardProduct extends Schema.Component {
  collectionName: 'components_cards_card_products';
  info: {
    description: '';
    icon: 'border-style';
    name: 'ProductCard';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    link: Attribute.Component<'links.basic-link'>;
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface CardsProductLinkCard extends Schema.Component {
  collectionName: 'components_cards_product_link_cards';
  info: {
    icon: 'id-card-alt';
    name: 'ProductLinkCard';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    link: Attribute.Component<'links.basic-link'>;
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface CardsUseCaseCard extends Schema.Component {
  collectionName: 'components_cards_use_case_cards';
  info: {
    description: '';
    icon: 'arrow-alt-circle-up';
    name: 'useCaseCard';
  };
  attributes: {
    badge: Attribute.Text;
    description: Attribute.Text;
    estatus: Attribute.Enumeration<['available', 'deprecated', 'comming_soon']>;
    linkText: Attribute.String;
    linkUrl: Attribute.String;
    picture: Attribute.Media<'images' | 'files' | 'videos'>;
    statusText: Attribute.String;
    title: Attribute.String;
  };
}

export interface CustomCarousel extends Schema.Component {
  collectionName: 'components_portal_carousels';
  info: {
    icon: 'caret-right';
    name: 'carousel';
  };
  attributes: {
    slider: Attribute.String;
    sliderCarousel: Attribute.Component<'elements.slider', true>;
  };
}

export interface CustomChips extends Schema.Component {
  collectionName: 'components_portal_chips';
  info: {
    icon: 'child';
    name: 'chips';
  };
  attributes: {
    color: Attribute.String;
    name: Attribute.String;
  };
}

export interface CustomItems extends Schema.Component {
  collectionName: 'components_portal_items';
  info: {
    description: '';
    icon: 'th-list';
    name: 'items';
  };
  attributes: {
    description: Attribute.Text;
    icon: Attribute.String;
    image: Attribute.Media<'images' | 'files' | 'videos'>;
    title: Attribute.String;
  };
}

export interface CustomListFilter extends Schema.Component {
  collectionName: 'components_portal_list_filters';
  info: {
    icon: 'list';
    name: 'ListFilter';
  };
  attributes: {
    items: Attribute.Component<'elements.titles', true>;
    Title: Attribute.String;
  };
}

export interface CustomListRecent extends Schema.Component {
  collectionName: 'components_portal_list_recents';
  info: {
    description: '';
    icon: 'list-ol';
    name: 'ListRecent';
  };
  attributes: {
    items: Attribute.Component<'custom.items', true>;
    title: Attribute.String;
  };
}

export interface CustomQuestions extends Schema.Component {
  collectionName: 'components_portal_questions';
  info: {
    description: '';
    icon: 'question';
    name: 'questions';
  };
  attributes: {
    description: Attribute.String;
    description_two: Attribute.RichText;
    img: Attribute.Media<'images' | 'files' | 'videos'>;
    question: Attribute.String;
    seccion: Attribute.Enumeration<['Reverse', 'Normal', 'NoImage']>;
  };
}

export interface CustomSectionCard extends Schema.Component {
  collectionName: 'components_portal_section_cards';
  info: {
    icon: 'vr-cardboard';
    name: 'sectionCard';
  };
  attributes: {
    description: Attribute.Text;
    title: Attribute.String;
  };
}

export interface CustomTabCard extends Schema.Component {
  collectionName: 'components_portal_tab_cards';
  info: {
    description: '';
    icon: 'sd-card';
    name: 'tabCard';
  };
  attributes: {
    cards: Attribute.Component<'cards.card', true>;
    img: Attribute.Media<'images' | 'files' | 'videos'>;
    name: Attribute.String;
    tab: Attribute.Enumeration<['zero', 'one', 'two', 'three', 'four', 'five']>;
  };
}

export interface ElementsBadget extends Schema.Component {
  collectionName: 'components_elements_badgets';
  info: {
    description: '';
    icon: 'ad';
    name: 'Badge';
  };
  attributes: {
    title: Attribute.String;
  };
}

export interface ElementsBasicCard extends Schema.Component {
  collectionName: 'components_elements_basic_cards';
  info: {
    icon: 'baseball-ball';
    name: 'basicCard';
  };
  attributes: {
    description: Attribute.Text;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    link: Attribute.Component<'links.basic-link'>;
    subtitle: Attribute.String;
    title: Attribute.String;
  };
}

export interface ElementsBigFeature extends Schema.Component {
  collectionName: 'components_elements_big_features';
  info: {
    description: '';
    icon: 'battery-quarter';
    name: 'bigFeature';
  };
  attributes: {
    description: Attribute.Text;
    position: Attribute.String;
    title: Attribute.String;
  };
}

export interface ElementsCard extends Schema.Component {
  collectionName: 'components_elements_cards';
  info: {
    icon: 'money-check';
    name: 'Card';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Attribute.String;
    title: Attribute.String;
  };
}

export interface ElementsContainer extends Schema.Component {
  collectionName: 'components_elements_containers';
  info: {
    description: '';
    icon: 'archway';
    name: 'Container';
  };
  attributes: {
    badgeInfo: Attribute.Component<'elements.badget', true>;
    buttonLink: Attribute.Component<'links.button-link', true>;
    description: Attribute.Text;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    keyword: Attribute.String;
    title: Attribute.String;
  };
}

export interface ElementsCustomRadio extends Schema.Component {
  collectionName: 'components_elements_custom_radios';
  info: {
    icon: 'angle-left';
    name: 'customRadio';
  };
  attributes: {
    estatus: Attribute.Enumeration<['primary', 'secondary']>;
    title: Attribute.String;
  };
}

export interface ElementsEntry extends Schema.Component {
  collectionName: 'components_elements_entries';
  info: {
    description: '';
    icon: 'arrows-alt-v';
    name: 'Entry';
  };
  attributes: {
    content: Attribute.RichText;
    title: Attribute.String;
  };
}

export interface ElementsFeatureColumn extends Schema.Component {
  collectionName: 'components_slices_feature_columns';
  info: {
    description: '';
    icon: 'align-center';
    name: 'FeatureColumn';
  };
  attributes: {
    description: Attribute.Text;
    icon: Attribute.Media<'images'>;
    keyword: Attribute.String;
    title: Attribute.String & Attribute.Required;
  };
}

export interface ElementsFeatureRow extends Schema.Component {
  collectionName: 'components_slices_feature_rows';
  info: {
    description: '';
    icon: 'arrows-alt-h';
    name: 'FeatureRow';
  };
  attributes: {
    description: Attribute.Text;
    icon: Attribute.Media<'images' | 'videos'>;
    link: Attribute.Component<'links.link'>;
    title: Attribute.String & Attribute.Required;
  };
}

export interface ElementsFilterVersions extends Schema.Component {
  collectionName: 'components_elements_filter_versions';
  info: {
    description: '';
    icon: 'angle-up';
    name: 'GroupRadios';
  };
  attributes: {
    title: Attribute.String;
    version: Attribute.Component<'elements.custom-radio', true>;
  };
}

export interface ElementsFooterSection extends Schema.Component {
  collectionName: 'components_links_footer_sections';
  info: {
    description: '';
    icon: 'chevron-circle-down';
    name: 'FooterSection';
  };
  attributes: {
    drop: Attribute.Boolean;
    links: Attribute.Component<'links.link', true>;
    subtext: Attribute.String;
    title: Attribute.String;
  };
}

export interface ElementsFormCheckbox extends Schema.Component {
  collectionName: 'components_elements_form_checkboxes';
  info: {
    description: '';
    icon: 'window-close';
    name: 'formCheckbox';
  };
  attributes: {
    isRequired: Attribute.Boolean;
    links: Attribute.Component<'links.link', true>;
    name: Attribute.String;
    text: Attribute.String;
    type: Attribute.Enumeration<['checkbox', 'text']>;
    validationMessage: Attribute.Text;
  };
}

export interface ElementsFormResponse extends Schema.Component {
  collectionName: 'components_elements_form_responses';
  info: {
    description: '';
    icon: 'band-aid';
    name: 'FormResponse';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    message: Attribute.Text;
    show: Attribute.Boolean;
    title: Attribute.String;
    type: Attribute.Enumeration<['success', 'error']>;
  };
}

export interface ElementsImageList extends Schema.Component {
  collectionName: 'components_elements_image_lists';
  info: {
    icon: 'border-all';
    name: 'imageList';
  };
  attributes: {
    image: Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface ElementsLinkText extends Schema.Component {
  collectionName: 'components_elements_link_texts';
  info: {
    icon: 'border-none';
    name: 'linkText';
  };
  attributes: {
    link: Attribute.Component<'links.link'>;
    text: Attribute.String;
  };
}

export interface ElementsLogo extends Schema.Component {
  collectionName: 'components_elements_logos';
  info: {
    icon: 'angry';
    name: 'Logo';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    titles: Attribute.Component<'links.link', true>;
  };
}

export interface ElementsLogotype extends Schema.Component {
  collectionName: 'components_elements_logotypes';
  info: {
    description: '';
    icon: 'american-sign-language-interpreting';
    name: 'logotype';
  };
  attributes: {
    altText: Attribute.String;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    info: Attribute.Component<'elements.main-hero'>;
  };
}

export interface ElementsMainHero extends Schema.Component {
  collectionName: 'components_elements_main_heroes';
  info: {
    description: '';
    icon: 'allergies';
    name: 'mainHero';
  };
  attributes: {
    isKeywordInverted: Attribute.Boolean;
    keyword: Attribute.String;
    title: Attribute.String;
  };
}

export interface ElementsNavbarColumns extends Schema.Component {
  collectionName: 'components_elements_navbar_section';
  info: {
    description: '';
    icon: 'align-justify';
    name: 'navbarSection';
  };
  attributes: {
    drop: Attribute.Boolean;
    links: Attribute.Component<'links.link', true>;
    personalizedLink: Attribute.Component<'links.link'>;
    title: Attribute.String;
  };
}

export interface ElementsNotificationBanner extends Schema.Component {
  collectionName: 'components_elements_notification_banners';
  info: {
    description: '';
    icon: 'exclamation';
    name: 'NotificationBanner';
  };
  attributes: {
    body: Attribute.Component<'texts.link-text', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    title: Attribute.String;
    type: Attribute.Enumeration<['alert', 'info', 'warning']>;
  };
}

export interface ElementsPlaceholder extends Schema.Component {
  collectionName: 'components_elements_placeholders';
  info: {
    description: '';
    icon: 'arrow-circle-down';
    name: 'formInput';
  };
  attributes: {
    isRequired: Attribute.Boolean;
    label: Attribute.String;
    name: Attribute.String;
    placeholder: Attribute.String;
    type: Attribute.Enumeration<
      ['text', 'textarea', 'select', 'number', 'password', 'email', 'checkbox']
    >;
    validationMessage: Attribute.Text;
    value: Attribute.Text;
  };
}

export interface ElementsRedirectLinks extends Schema.Component {
  collectionName: 'components_elements_redirect_links';
  info: {
    icon: 'angle-down';
    name: 'redirectLinks';
  };
  attributes: {
    links: Attribute.Component<'links.basic-link', true>;
    title: Attribute.String;
  };
}

export interface ElementsSearchInput extends Schema.Component {
  collectionName: 'components_elements_search_inputs';
  info: {
    description: '';
    icon: 'atlas';
    name: 'searchInput';
  };
  attributes: {
    placeholder: Attribute.String;
    submitButton: Attribute.Component<'links.button'>;
  };
}

export interface ElementsSearchOutput extends Schema.Component {
  collectionName: 'components_elements_search_outputs';
  info: {
    description: '';
    icon: 'align-left';
    name: 'searchOutput';
  };
  attributes: {
    message: Attribute.String;
  };
}

export interface ElementsSelect extends Schema.Component {
  collectionName: 'components_elements_selects';
  info: {
    icon: 'arrow-circle-right';
    name: 'select';
  };
  attributes: {
    name: Attribute.String;
    tetretert: Attribute.Component<'elements.entry', true>;
  };
}

export interface ElementsSlider extends Schema.Component {
  collectionName: 'components_elements_sliders';
  info: {
    icon: 'book-open';
    name: 'slider';
  };
  attributes: {
    actionButtons: Attribute.JSON;
    imgSrc: Attribute.Media<'images' | 'files' | 'videos'>;
    subtitleList: Attribute.Component<'elements.subtitle', true>;
    title: Attribute.String;
  };
}

export interface ElementsSocialNetwork extends Schema.Component {
  collectionName: 'components_elements_social_networks';
  info: {
    icon: 'align-right';
    name: 'socialNetwork';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    type: Attribute.Enumeration<
      ['Facebook', 'Instagram', 'Twitter', 'LinkedIn', 'Youtube']
    >;
    url: Attribute.String;
  };
}

export interface ElementsStatusEnumerable extends Schema.Component {
  collectionName: 'components_elements_status_enumerables';
  info: {
    icon: 'adjust';
    name: 'statusEnumerable';
  };
  attributes: {
    status: Attribute.Enumeration<['enable', 'disable']>;
  };
}

export interface ElementsSubtitle extends Schema.Component {
  collectionName: 'components_elements_subtitles';
  info: {
    icon: 'book';
    name: 'subtitle';
  };
  attributes: {
    keyword: Attribute.String;
    order: Attribute.Integer;
    text: Attribute.String;
  };
}

export interface ElementsTestimonial extends Schema.Component {
  collectionName: 'components_slices_testimonials';
  info: {
    description: '';
    icon: 'user-check';
    name: 'Testimonial';
  };
  attributes: {
    authorName: Attribute.String;
    authorTitle: Attribute.String;
    bigIcon: Attribute.Media<'images'>;
    buttonLink: Attribute.Component<'links.button-link', true>;
    description: Attribute.RichText;
    icon: Attribute.Media<'images'>;
    keyword: Attribute.String;
    title: Attribute.String;
  };
}

export interface ElementsTitles extends Schema.Component {
  collectionName: 'components_elements_titles';
  info: {
    description: '';
    icon: 'beer';
    name: 'titles';
  };
  attributes: {
    class: Attribute.String;
    label: Attribute.String;
    tab: Attribute.Enumeration<['one', 'two', 'three', 'four', 'five']>;
    title: Attribute.String;
  };
}

export interface FormularioButtonForm extends Schema.Component {
  collectionName: 'components_formulario_button_forms';
  info: {
    description: '';
    icon: 'arrow-left';
    name: 'ButtonForm';
  };
  attributes: {
    class: Attribute.Enumeration<['primary', 'secondary', 'tertiary']>;
    link: Attribute.Component<'links.link'>;
    name: Attribute.String;
    order: Attribute.Integer;
    text: Attribute.String;
    type: Attribute.String;
  };
}

export interface FormularioCheckbox extends Schema.Component {
  collectionName: 'components_formulario_checkboxes';
  info: {
    description: '';
    icon: 'edit';
    name: 'Checkbox';
  };
  attributes: {
    errorMessage: Attribute.String;
    isRequired: Attribute.Boolean;
    label: Attribute.String;
    name: Attribute.String;
    order: Attribute.Integer;
    type: Attribute.String;
    value: Attribute.Boolean;
  };
}

export interface FormularioFilterEstatus extends Schema.Component {
  collectionName: 'components_formulario_filter_estatuses';
  info: {
    icon: 'air-freshener';
    name: 'FilterEstatus';
  };
  attributes: {
    checkboxes: Attribute.Component<'formulario.checkbox', true>;
    title: Attribute.String;
  };
}

export interface FormularioForm extends Schema.Component {
  collectionName: 'components_formulario_forms';
  info: {
    description: '';
    icon: 'ambulance';
    name: 'form';
  };
  attributes: {
    buttons: Attribute.Component<'formulario.button-form', true>;
    checkboxes: Attribute.Component<'formulario.checkbox', true>;
    inputs: Attribute.Component<'formulario.input', true>;
    select: Attribute.Component<'formulario.select-option', true>;
    subtitle: Attribute.RichText;
    title: Attribute.Text;
  };
}

export interface FormularioInput extends Schema.Component {
  collectionName: 'components_formulario_inputs';
  info: {
    description: '';
    icon: 'sticky-note';
    name: 'Input';
  };
  attributes: {
    errorMessage: Attribute.String;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    isRequired: Attribute.Boolean;
    name: Attribute.String;
    order: Attribute.Integer;
    placeholder: Attribute.String;
    type: Attribute.String;
    value: Attribute.String;
  };
}

export interface FormularioOption extends Schema.Component {
  collectionName: 'components_formulario_options';
  info: {
    description: '';
    icon: 'expand-arrows-alt';
    name: 'Option';
  };
  attributes: {
    selected: Attribute.String;
    text: Attribute.String;
    value: Attribute.String;
  };
}

export interface FormularioSelectOption extends Schema.Component {
  collectionName: 'components_formulario_select_options';
  info: {
    description: '';
    icon: 'anchor';
    name: 'SelectOption';
  };
  attributes: {
    errorMessage: Attribute.String;
    isRequired: Attribute.Boolean;
    name: Attribute.String;
    Option: Attribute.Component<'formulario.option', true>;
    order: Attribute.Integer;
    type: Attribute.String;
  };
}

export interface HomeBannerSection extends Schema.Component {
  collectionName: 'components_home_banner_sections';
  info: {
    description: '';
    icon: 'arrow-up';
    name: 'BannerSection';
  };
  attributes: {
    background: Attribute.Media<'images' | 'files' | 'videos'>;
    buttons: Attribute.Component<'links.button', true>;
    search: Attribute.String;
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface HomeBenefitsList extends Schema.Component {
  collectionName: 'components_home_benefits_lists';
  info: {
    icon: 'birthday-cake';
    name: 'benefitsList';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface HomeDiscoverSection extends Schema.Component {
  collectionName: 'components_home_discover_sections';
  info: {
    description: '';
    icon: 'at';
    name: 'DiscoverSection';
  };
  attributes: {
    button: Attribute.Component<'links.basic-link'>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    iconText: Attribute.String;
    Products: Attribute.Component<'use-cases.products', true>;
    smallText: Attribute.String;
    statusApi: Attribute.Component<'home.status-api'>;
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface HomeKeySection extends Schema.Component {
  collectionName: 'components_home_key_sections';
  info: {
    icon: 'bell';
    name: 'KeySection';
  };
  attributes: {
    benefitsList: Attribute.Component<'home.benefits-list', true>;
    button: Attribute.Component<'links.basic-link', true>;
    images: Attribute.Media<'images' | 'files' | 'videos'>;
    title: Attribute.String;
  };
}

export interface HomeStatusApi extends Schema.Component {
  collectionName: 'components_home_status_apis';
  info: {
    icon: 'burn';
    name: 'StatusApi';
  };
  attributes: {
    status: Attribute.Enumeration<['active', 'desactive']>;
    text: Attribute.String;
  };
}

export interface HomeSteps extends Schema.Component {
  collectionName: 'components_home_steps';
  info: {
    icon: 'basketball-ball';
    name: 'Steps';
  };
  attributes: {
    number: Attribute.String;
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface HomeWidgetSection extends Schema.Component {
  collectionName: 'components_home_widget_sections';
  info: {
    description: '';
    icon: 'bus';
    name: 'WidgetSection';
  };
  attributes: {
    button: Attribute.Component<'links.basic-link'>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    image: Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Attribute.RichText;
    title: Attribute.String;
  };
}

export interface HomeWorkSection extends Schema.Component {
  collectionName: 'components_home_work_sections';
  info: {
    description: '';
    icon: 'book-dead';
    name: 'WorkSection';
  };
  attributes: {
    background: Attribute.Media<'images' | 'files' | 'videos'>;
    buttons: Attribute.Component<'links.button', true>;
    Steps: Attribute.Component<'home.steps', true>;
    title: Attribute.String;
  };
}

export interface LayoutFooter extends Schema.Component {
  collectionName: 'components_layout_footers';
  info: {
    icon: 'caret-square-down';
    name: 'Footer';
  };
  attributes: {
    copyright: Attribute.String;
    idContentType: Attribute.UID;
    logotype: Attribute.Component<'elements.logotype'>;
    redirectLinks: Attribute.Component<'elements.redirect-links', true>;
    sharing: Attribute.Component<'elements.social-network', true>;
  };
}

export interface LayoutNavbar extends Schema.Component {
  collectionName: 'components_layout_navbars';
  info: {
    description: '';
    icon: 'map-signs';
    name: 'Navbar';
  };
  attributes: {
    button: Attribute.Component<'links.button-link', true>;
    idContentType: Attribute.UID;
    logotype: Attribute.Component<'elements.logotype'>;
    navbarColumns: Attribute.Component<'elements.navbar-columns', true>;
  };
}

export interface LinksBasicLink extends Schema.Component {
  collectionName: 'components_links_basic_links';
  info: {
    description: '';
    icon: 'angle-double-left';
    name: 'basicLink';
  };
  attributes: {
    name: Attribute.String;
    target: Attribute.Enumeration<['_self', '_blank']>;
    url: Attribute.String;
  };
}

export interface LinksBigLink extends Schema.Component {
  collectionName: 'components_links_big_links';
  info: {
    description: '';
    icon: 'asterisk';
    name: 'bigLink';
  };
  attributes: {
    altText: Attribute.String;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    link: Attribute.Component<'links.link'>;
    status: Attribute.Enumeration<['enabled', 'disabled']>;
  };
}

export interface LinksButton extends Schema.Component {
  collectionName: 'components_links_simple_buttons';
  info: {
    description: '';
    icon: 'fingerprint';
    name: 'Button';
  };
  attributes: {
    class: Attribute.Enumeration<
      [
        'primary',
        'secondary',
        'secundaryWhite',
        'tertiary',
        'tertiaryWhite',
        'ghost',
        'ghostVariant',
        'greeyPrimary',
        'disabled'
      ]
    >;
    link: Attribute.String;
    name: Attribute.String;
    order: Attribute.Integer;
    type: Attribute.Enumeration<['primary', 'secondary']>;
  };
}

export interface LinksButtonLink extends Schema.Component {
  collectionName: 'components_links_buttons';
  info: {
    description: '';
    icon: 'fingerprint';
    name: 'Button-link';
  };
  attributes: {
    link: Attribute.Component<'links.link'>;
    type: Attribute.Enumeration<['primary', 'secondary']>;
  };
}

export interface LinksDropBigLink extends Schema.Component {
  collectionName: 'components_links_drop_big_links';
  info: {
    icon: 'boxes';
    name: 'dropBigLink';
  };
  attributes: {
    bigLinks: Attribute.Component<'links.big-link', true>;
    mainLink: Attribute.Component<'links.link'>;
  };
}

export interface LinksDropLink extends Schema.Component {
  collectionName: 'components_links_drop_links';
  info: {
    icon: 'database';
    name: 'dropLink';
  };
  attributes: {
    links: Attribute.Component<'links.link', true>;
    mainLink: Attribute.Component<'links.link'>;
  };
}

export interface LinksIconLink extends Schema.Component {
  collectionName: 'components_links_icon_links';
  info: {
    icon: 'battery-three-quarters';
    name: 'iconLink';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    link: Attribute.Component<'links.link'>;
  };
}

export interface LinksLink extends Schema.Component {
  collectionName: 'components_links_links';
  info: {
    description: '';
    icon: 'link';
    name: 'Link';
  };
  attributes: {
    name: Attribute.String;
    target: Attribute.Enumeration<['_self', '_blank']> &
      Attribute.DefaultTo<'_self'>;
    url: Attribute.String;
  };
}

export interface LinksShareList extends Schema.Component {
  collectionName: 'components_links_share_lists';
  info: {
    icon: 'bread-slice';
    name: 'ShareList';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    target: Attribute.Enumeration<['_self', '_blank']>;
    url: Attribute.Text;
  };
}

export interface LinksSubLink extends Schema.Component {
  collectionName: 'components_links_sub_links';
  info: {
    icon: 'arrow-right';
    name: 'SubLink';
  };
  attributes: {
    descripcion: Attribute.String;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    name: Attribute.String;
  };
}

export interface MetaMetadata extends Schema.Component {
  collectionName: 'components_meta_metadata';
  info: {
    description: '';
    icon: 'robot';
    name: 'Metadata';
  };
  attributes: {
    metaDescription: Attribute.Text;
    metaTitle: Attribute.String;
  };
}

export interface NewCardList extends Schema.Component {
  collectionName: 'components_new_card_lists';
  info: {
    icon: 'barcode';
    name: 'CardList';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    url: Attribute.String;
  };
}

export interface NewCardsList extends Schema.Component {
  collectionName: 'components_new_cards_lists';
  info: {
    icon: 'box-open';
    name: 'cardsList';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    url: Attribute.String;
  };
}

export interface NewShare extends Schema.Component {
  collectionName: 'components_new_shares';
  info: {
    description: '';
    icon: 'share';
    name: 'Share';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    url: Attribute.String;
  };
}

export interface NewSharing extends Schema.Component {
  collectionName: 'components_new_sharings';
  info: {
    icon: 'share-square';
    name: 'Sharing';
  };
  attributes: {
    shareList: Attribute.Component<'new.share', true>;
    shareName: Attribute.String;
  };
}

export interface NewTest extends Schema.Component {
  collectionName: 'components_new_tests';
  info: {
    icon: 'ban';
    name: 'test';
  };
  attributes: {
    test: Attribute.String;
  };
}

export interface SectionsBanner extends Schema.Component {
  collectionName: 'components_sections_banners';
  info: {
    icon: 'apple-alt';
    name: 'Banner';
  };
  attributes: {
    buttons: Attribute.Component<'links.button-link', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    Titles: Attribute.Component<'elements.main-hero', true>;
  };
}

export interface SectionsBasicContainer extends Schema.Component {
  collectionName: 'components_sections_basic_containers';
  info: {
    icon: 'atom';
    name: 'basicContainer';
  };
  attributes: {
    idContentType: Attribute.UID;
    title: Attribute.String;
  };
}

export interface SectionsBigContainer extends Schema.Component {
  collectionName: 'components_sections_big_containers';
  info: {
    icon: 'assistive-listening-systems';
    name: 'bigContainer';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    title: Attribute.Component<'elements.main-hero'>;
  };
}

export interface SectionsBigHero extends Schema.Component {
  collectionName: 'components_sections_big_heroes';
  info: {
    icon: 'arrow-alt-circle-left';
    name: 'bigHero';
  };
  attributes: {
    button: Attribute.Component<'links.button-link', true>;
    description: Attribute.Text;
    header: Attribute.Component<'elements.main-hero', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
  };
}

export interface SectionsBottomActions extends Schema.Component {
  collectionName: 'components_slices_bottom_actions';
  info: {
    description: '';
    icon: 'angle-double-right';
    name: 'BottomActions';
  };
  attributes: {
    buttons: Attribute.Component<'links.button-link', true>;
    keyword: Attribute.String;
    title: Attribute.String;
  };
}

export interface SectionsBreadcumbSection extends Schema.Component {
  collectionName: 'components_sections_breadcumb_sections';
  info: {
    description: '';
    icon: 'code';
    name: 'BreadcumbSection';
  };
  attributes: {
    ClimatetradeLink: Attribute.Component<'links.link', true>;
    DevelopersName: Attribute.String;
    shareList: Attribute.Component<'links.share-list', true>;
    shareName: Attribute.String;
  };
}

export interface SectionsButtonHero extends Schema.Component {
  collectionName: 'components_sections_button_heroes';
  info: {
    description: '';
    icon: 'arrow-alt-circle-down';
    name: 'buttonHero';
  };
  attributes: {
    button: Attribute.Component<'links.button-link', true>;
    header: Attribute.Component<'elements.main-hero', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface SectionsCalculateSection extends Schema.Component {
  collectionName: 'components_sections_calculate_sections';
  info: {
    description: '';
    icon: 'strikethrough';
    name: 'CalculateSection';
  };
  attributes: {
    button: Attribute.Component<'links.basic-link'>;
    image: Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Attribute.String;
    title: Attribute.String;
  };
}

export interface SectionsCallAction extends Schema.Component {
  collectionName: 'components_sections_call_actions';
  info: {
    description: '';
    icon: 'battery-empty';
    name: 'callAction';
  };
  attributes: {
    backgroundIcon: Attribute.Media<'images' | 'files' | 'videos'>;
    description: Attribute.String;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface SectionsClassicContainer extends Schema.Component {
  collectionName: 'components_sections_classic_containers';
  info: {
    icon: 'arrow-circle-left';
    name: 'classicContainer';
  };
  attributes: {
    description: Attribute.Text;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    title: Attribute.String;
  };
}

export interface SectionsClassicHero extends Schema.Component {
  collectionName: 'components_sections_classic_heroes';
  info: {
    icon: 'address-book';
    name: 'classicHero';
  };
  attributes: {
    description: Attribute.Text;
    header: Attribute.Component<'elements.main-hero', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
  };
}

export interface SectionsContent extends Schema.Component {
  collectionName: 'components_sections_contents';
  info: {
    icon: 'backspace';
    name: 'content';
  };
  attributes: {};
}

export interface SectionsContentSection extends Schema.Component {
  collectionName: 'components_sections_content_sections';
  info: {
    icon: 'balance-scale-left';
    name: 'contentSection';
  };
  attributes: {
    title: Attribute.String;
  };
}

export interface SectionsCookies extends Schema.Component {
  collectionName: 'components_sections_cookies';
  info: {
    icon: 'bold';
    name: 'cookies';
  };
  attributes: {
    actions: Attribute.Component<'links.button', true>;
    info: Attribute.Component<'elements.notification-banner'>;
  };
}

export interface SectionsCopyright extends Schema.Component {
  collectionName: 'components_sections_copyrights';
  info: {
    icon: 'external-link-alt';
    name: 'copyright';
  };
  attributes: {
    link: Attribute.Component<'texts.link-text'>;
    mainText: Attribute.String;
  };
}

export interface SectionsEntriesList extends Schema.Component {
  collectionName: 'components_sections_entries_lists';
  info: {
    description: '';
    icon: 'address-card';
    name: 'EntriesList';
  };
  attributes: {
    description: Attribute.String;
    Entries: Attribute.Component<'elements.entry', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    mainHero: Attribute.Component<'elements.main-hero'>;
    title: Attribute.String;
  };
}

export interface SectionsFeatureBasicGroup extends Schema.Component {
  collectionName: 'components_sections_feature_basic_groups';
  info: {
    icon: 'angle-double-up';
    name: 'featureBasicGroup';
  };
  attributes: {
    idContentType: Attribute.UID;
  };
}

export interface SectionsFeatureColumnsGroup extends Schema.Component {
  collectionName: 'components_slices_feature_columns_groups';
  info: {
    description: '';
    icon: 'star-of-life';
    name: 'FeatureColumnsGroup';
  };
  attributes: {
    button: Attribute.Component<'links.button-link', true>;
    description: Attribute.RichText;
    features: Attribute.Component<'elements.feature-column', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    keyword: Attribute.String;
    mainHero: Attribute.Component<'elements.main-hero', true>;
    title: Attribute.String;
  };
}

export interface SectionsFeatureRowsGroup extends Schema.Component {
  collectionName: 'components_slices_feature_rows_groups';
  info: {
    icon: 'bars';
    name: 'FeatureRowsGroup';
  };
  attributes: {
    button: Attribute.Component<'links.button-link', true>;
    description: Attribute.RichText;
    features: Attribute.Component<'elements.feature-row', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    keyword: Attribute.String;
    mainHero: Attribute.Component<'elements.main-hero', true>;
    title: Attribute.String;
  };
}

export interface SectionsForAllSection extends Schema.Component {
  collectionName: 'components_sections_for_all_sections';
  info: {
    description: '';
    icon: 'check';
    name: 'ForAllSection';
  };
  attributes: {
    button: Attribute.Component<'links.basic-link'>;
    cards: Attribute.Component<'elements.card', true>;
    content: Attribute.Text;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Attribute.String;
    title: Attribute.String;
  };
}

export interface SectionsFourthFooterSection extends Schema.Component {
  collectionName: 'components_sections_fourth_footer_sections';
  info: {
    icon: 'bowling-ball';
    name: 'FourthFooterSection';
  };
  attributes: {
    buttonAffirmative: Attribute.Component<'links.basic-link'>;
    buttonNegative: Attribute.Component<'links.basic-link'>;
    IdContentType: Attribute.String & Attribute.Required & Attribute.Unique;
    text: Attribute.RichText;
  };
}

export interface SectionsFullHero extends Schema.Component {
  collectionName: 'components_sections_full_heroes';
  info: {
    icon: 'balance-scale';
    name: 'fullHero';
  };
  attributes: {
    button: Attribute.Component<'links.button', true>;
    description: Attribute.Text;
    header: Attribute.Component<'elements.main-hero', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface SectionsHowWorks extends Schema.Component {
  collectionName: 'components_sections_how_works';
  info: {
    icon: 'bone';
    name: 'howWorks';
  };
  attributes: {
    background: Attribute.Media<'images' | 'files' | 'videos'>;
    button: Attribute.Component<'links.button-link', true>;
    features: Attribute.Component<'elements.big-feature', true>;
    header: Attribute.Component<'elements.main-hero'>;
    icon: Attribute.Media<'images'>;
    idContentType: Attribute.UID;
    subtext: Attribute.String;
  };
}

export interface SectionsIconContainer extends Schema.Component {
  collectionName: 'components_sections_icon_containers';
  info: {
    icon: 'baby';
    name: 'iconContainer';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    title: Attribute.String;
  };
}

export interface SectionsIconHero extends Schema.Component {
  collectionName: 'components_sections_icon_heroes';
  info: {
    icon: 'arrow-down';
    name: 'iconHero';
  };
  attributes: {
    header: Attribute.Component<'elements.main-hero'>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
  };
}

export interface SectionsIndividualContainer extends Schema.Component {
  collectionName: 'components_sections_individual_containers';
  info: {
    icon: 'ankh';
    name: 'individualContainer';
  };
  attributes: {
    button: Attribute.Component<'links.button-link', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    title: Attribute.String;
  };
}

export interface SectionsLinkHero extends Schema.Component {
  collectionName: 'components_sections_link_heroes';
  info: {
    icon: 'angle-right';
    name: 'LinkHero';
  };
  attributes: {
    header: Attribute.Component<'elements.main-hero'>;
    idContentType: Attribute.UID;
    imgSideText: Attribute.String;
    link: Attribute.Component<'links.link'>;
    sideText: Attribute.String;
    subtitle: Attribute.String;
  };
}

export interface SectionsLogotype extends Schema.Component {
  collectionName: 'components_sections_logotypes';
  info: {
    icon: 'bong';
    name: 'logotype';
  };
  attributes: {
    altText: Attribute.String;
    mainText: Attribute.Component<'texts.icon-text'>;
  };
}

export interface SectionsMainContainer extends Schema.Component {
  collectionName: 'components_sections_main_containers';
  info: {
    description: '';
    icon: 'archive';
    name: 'MainContainer';
  };
  attributes: {
    button: Attribute.Component<'links.button-link'>;
    idContentType: Attribute.UID;
    title: Attribute.String;
  };
}

export interface SectionsMainFeatures extends Schema.Component {
  collectionName: 'components_sections_main_features';
  info: {
    icon: 'binoculars';
    name: 'mainFeatures';
  };
  attributes: {
    button: Attribute.Component<'links.button-link', true>;
    features: Attribute.Component<'elements.big-feature', true>;
    header: Attribute.Component<'elements.main-hero'>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
  };
}

export interface SectionsOurProductsSection extends Schema.Component {
  collectionName: 'components_sections_our_products_sections';
  info: {
    description: '';
    icon: 'clipboard-list';
    name: 'OurProductsSection';
  };
  attributes: {
    CardProduct: Attribute.Component<'cards.card-product', true>;
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface SectionsQuestionsListSection extends Schema.Component {
  collectionName: 'components_sections_questions_list_sections';
  info: {
    description: '';
    icon: 'ellipsis-v';
    name: 'QuestionsListSection';
  };
  attributes: {
    questionsList: Attribute.Component<'elements.entry', true>;
  };
}

export interface SectionsRichText extends Schema.Component {
  collectionName: 'components_sections_rich_texts';
  info: {
    icon: 'text-height';
    name: 'RichText';
  };
  attributes: {
    content: Attribute.RichText;
  };
}

export interface SectionsSearch extends Schema.Component {
  collectionName: 'components_sections_searches';
  info: {
    icon: 'audio-description';
    name: 'Search';
  };
  attributes: {
    idContentType: Attribute.UID;
    searchInput: Attribute.Component<'elements.search-input'>;
    searchOutput: Attribute.Component<'elements.search-output'>;
  };
}

export interface SectionsSectionUseCase extends Schema.Component {
  collectionName: 'components_sections_section_use_cases';
  info: {
    description: '';
    icon: 'biohazard';
    name: 'sectionUseCase';
  };
  attributes: {
    subtitle: Attribute.Text;
    title: Attribute.String;
    useCaseList: Attribute.Component<'cards.use-case-card', true>;
  };
}

export interface SectionsSectionWidgetForm extends Schema.Component {
  collectionName: 'components_sections_section_widget_forms';
  info: {
    icon: 'arrow-circle-up';
    name: 'sectionWidgetForm';
  };
  attributes: {
    description: Attribute.Text;
    form: Attribute.Component<'formulario.form'>;
    picture: Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface SectionsShareOptions extends Schema.Component {
  collectionName: 'components_sections_share_options';
  info: {
    icon: 'box';
    name: 'shareOptions';
  };
  attributes: {
    links: Attribute.Component<'links.icon-link', true>;
    title: Attribute.String;
  };
}

export interface SectionsSidebar extends Schema.Component {
  collectionName: 'components_sections_sidebars';
  info: {
    description: '';
    icon: 'angle-double-down';
    name: 'Sidebar';
  };
  attributes: {
    Entries: Attribute.Component<'elements.entry', true>;
    idContentType: Attribute.UID;
  };
}

export interface SectionsSocialNetworks extends Schema.Component {
  collectionName: 'components_sections_social_networks';
  info: {
    icon: 'arrows-alt';
    name: 'socialNetworks';
  };
  attributes: {
    sharingContent: Attribute.Component<'elements.social-network', true>;
  };
}

export interface SectionsTestimonialsGroup extends Schema.Component {
  collectionName: 'components_slices_testimonials_groups';
  info: {
    description: '';
    icon: 'user-friends';
    name: 'TestimonialsGroup';
  };
  attributes: {
    description: Attribute.Text;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Attribute.UID;
    keyword: Attribute.String;
    link: Attribute.Component<'links.link'>;
    mainHero: Attribute.Component<'elements.main-hero', true>;
    testimonials: Attribute.Component<'elements.testimonial', true>;
    title: Attribute.String;
  };
}

export interface SectionsTimeSection extends Schema.Component {
  collectionName: 'components_sections_time_sections';
  info: {
    description: '';
    icon: 'history';
    name: 'TimeSection';
  };
  attributes: {
    button: Attribute.Component<'links.basic-link'>;
    images: Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Attribute.String;
    title: Attribute.String;
  };
}

export interface SectionsTitleSection extends Schema.Component {
  collectionName: 'components_sections_title_sections';
  info: {
    description: '';
    icon: 'grip-lines';
    name: 'TitleSection';
  };
  attributes: {
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface TextsIconText extends Schema.Component {
  collectionName: 'components_texts_icon_texts';
  info: {
    icon: 'award';
    name: 'iconText';
  };
  attributes: {
    altText: Attribute.String;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    name: Attribute.String;
  };
}

export interface TextsLinkText extends Schema.Component {
  collectionName: 'components_texts_link_texts';
  info: {
    icon: 'arrow-alt-circle-right';
    name: 'linkText';
  };
  attributes: {
    link: Attribute.Component<'links.link', true>;
    text: Attribute.String;
  };
}

export interface UseCasesBadgeList extends Schema.Component {
  collectionName: 'components_use_cases_badge_lists';
  info: {
    icon: 'bacon';
    name: 'badgeList';
  };
  attributes: {
    name: Attribute.String;
  };
}

export interface UseCasesBanner extends Schema.Component {
  collectionName: 'components_use_cases_banners';
  info: {
    icon: 'window-minimize';
    name: 'banner';
  };
  attributes: {
    buttonList: Attribute.Component<'use-cases.button-list', true>;
    idContentType: Attribute.String & Attribute.Required & Attribute.Unique;
    image: Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Attribute.Text;
    title: Attribute.String;
  };
}

export interface UseCasesButtonList extends Schema.Component {
  collectionName: 'components_use_cases_button_lists';
  info: {
    icon: 'bullseye';
    name: 'buttonList';
  };
  attributes: {
    title: Attribute.String;
    url: Attribute.String;
  };
}

export interface UseCasesCalculateUseCase extends Schema.Component {
  collectionName: 'components_use_cases_calculate_use_cases';
  info: {
    description: '';
    icon: 'circle-notch';
    name: 'CalculateUseCase';
  };
  attributes: {
    buttons: Attribute.Component<'links.basic-link', true>;
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    Paragraphs: Attribute.Component<'use-cases.paragraphs', true>;
    Products: Attribute.Component<'use-cases.products', true>;
    smallText: Attribute.String;
    title: Attribute.String;
  };
}

export interface UseCasesLabels extends Schema.Component {
  collectionName: 'components_use_cases_labels';
  info: {
    icon: 'ellipsis-h';
    name: 'labels';
  };
  attributes: {
    name: Attribute.String;
  };
}

export interface UseCasesMetadata extends Schema.Component {
  collectionName: 'components_use_cases_metadata';
  info: {
    icon: 'braille';
    name: 'metadata';
  };
  attributes: {
    metaDescription: Attribute.Text;
    metaTitle: Attribute.String;
  };
}

export interface UseCasesParagraphs extends Schema.Component {
  collectionName: 'components_use_cases_paragraphs';
  info: {
    icon: 'server';
    name: 'Paragraphs';
  };
  attributes: {
    text: Attribute.Text;
  };
}

export interface UseCasesProducts extends Schema.Component {
  collectionName: 'components_use_cases_products';
  info: {
    description: '';
    icon: 'bolt';
    name: 'Products';
  };
  attributes: {
    icon: Attribute.Media<'images' | 'files' | 'videos'>;
    iconText: Attribute.String;
    num: Attribute.BigInteger;
    subtitle: Attribute.Text;
    title: Attribute.String;
    url: Attribute.String;
    verbs: Attribute.Enumeration<['get', 'post', 'put', 'patch', 'delete']>;
  };
}

export interface UseCasesUseCases extends Schema.Component {
  collectionName: 'components_use_cases_use_cases';
  info: {
    description: '';
    icon: 'circle';
    name: 'useCases';
  };
  attributes: {};
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'apis.filters': ApisFilters;
      'apis.pagination': ApisPagination;
      'cards.card': CardsCard;
      'cards.card-product': CardsCardProduct;
      'cards.product-link-card': CardsProductLinkCard;
      'cards.use-case-card': CardsUseCaseCard;
      'custom.carousel': CustomCarousel;
      'custom.chips': CustomChips;
      'custom.items': CustomItems;
      'custom.list-filter': CustomListFilter;
      'custom.list-recent': CustomListRecent;
      'custom.questions': CustomQuestions;
      'custom.section-card': CustomSectionCard;
      'custom.tab-card': CustomTabCard;
      'elements.badget': ElementsBadget;
      'elements.basic-card': ElementsBasicCard;
      'elements.big-feature': ElementsBigFeature;
      'elements.card': ElementsCard;
      'elements.container': ElementsContainer;
      'elements.custom-radio': ElementsCustomRadio;
      'elements.entry': ElementsEntry;
      'elements.feature-column': ElementsFeatureColumn;
      'elements.feature-row': ElementsFeatureRow;
      'elements.filter-versions': ElementsFilterVersions;
      'elements.footer-section': ElementsFooterSection;
      'elements.form-checkbox': ElementsFormCheckbox;
      'elements.form-response': ElementsFormResponse;
      'elements.image-list': ElementsImageList;
      'elements.link-text': ElementsLinkText;
      'elements.logo': ElementsLogo;
      'elements.logotype': ElementsLogotype;
      'elements.main-hero': ElementsMainHero;
      'elements.navbar-columns': ElementsNavbarColumns;
      'elements.notification-banner': ElementsNotificationBanner;
      'elements.placeholder': ElementsPlaceholder;
      'elements.redirect-links': ElementsRedirectLinks;
      'elements.search-input': ElementsSearchInput;
      'elements.search-output': ElementsSearchOutput;
      'elements.select': ElementsSelect;
      'elements.slider': ElementsSlider;
      'elements.social-network': ElementsSocialNetwork;
      'elements.status-enumerable': ElementsStatusEnumerable;
      'elements.subtitle': ElementsSubtitle;
      'elements.testimonial': ElementsTestimonial;
      'elements.titles': ElementsTitles;
      'formulario.button-form': FormularioButtonForm;
      'formulario.checkbox': FormularioCheckbox;
      'formulario.filter-estatus': FormularioFilterEstatus;
      'formulario.form': FormularioForm;
      'formulario.input': FormularioInput;
      'formulario.option': FormularioOption;
      'formulario.select-option': FormularioSelectOption;
      'home.banner-section': HomeBannerSection;
      'home.benefits-list': HomeBenefitsList;
      'home.discover-section': HomeDiscoverSection;
      'home.key-section': HomeKeySection;
      'home.status-api': HomeStatusApi;
      'home.steps': HomeSteps;
      'home.widget-section': HomeWidgetSection;
      'home.work-section': HomeWorkSection;
      'layout.footer': LayoutFooter;
      'layout.navbar': LayoutNavbar;
      'links.basic-link': LinksBasicLink;
      'links.big-link': LinksBigLink;
      'links.button': LinksButton;
      'links.button-link': LinksButtonLink;
      'links.drop-big-link': LinksDropBigLink;
      'links.drop-link': LinksDropLink;
      'links.icon-link': LinksIconLink;
      'links.link': LinksLink;
      'links.share-list': LinksShareList;
      'links.sub-link': LinksSubLink;
      'meta.metadata': MetaMetadata;
      'new.card-list': NewCardList;
      'new.cards-list': NewCardsList;
      'new.share': NewShare;
      'new.sharing': NewSharing;
      'new.test': NewTest;
      'sections.banner': SectionsBanner;
      'sections.basic-container': SectionsBasicContainer;
      'sections.big-container': SectionsBigContainer;
      'sections.big-hero': SectionsBigHero;
      'sections.bottom-actions': SectionsBottomActions;
      'sections.breadcumb-section': SectionsBreadcumbSection;
      'sections.button-hero': SectionsButtonHero;
      'sections.calculate-section': SectionsCalculateSection;
      'sections.call-action': SectionsCallAction;
      'sections.classic-container': SectionsClassicContainer;
      'sections.classic-hero': SectionsClassicHero;
      'sections.content': SectionsContent;
      'sections.content-section': SectionsContentSection;
      'sections.cookies': SectionsCookies;
      'sections.copyright': SectionsCopyright;
      'sections.entries-list': SectionsEntriesList;
      'sections.feature-basic-group': SectionsFeatureBasicGroup;
      'sections.feature-columns-group': SectionsFeatureColumnsGroup;
      'sections.feature-rows-group': SectionsFeatureRowsGroup;
      'sections.for-all-section': SectionsForAllSection;
      'sections.fourth-footer-section': SectionsFourthFooterSection;
      'sections.full-hero': SectionsFullHero;
      'sections.how-works': SectionsHowWorks;
      'sections.icon-container': SectionsIconContainer;
      'sections.icon-hero': SectionsIconHero;
      'sections.individual-container': SectionsIndividualContainer;
      'sections.link-hero': SectionsLinkHero;
      'sections.logotype': SectionsLogotype;
      'sections.main-container': SectionsMainContainer;
      'sections.main-features': SectionsMainFeatures;
      'sections.our-products-section': SectionsOurProductsSection;
      'sections.questions-list-section': SectionsQuestionsListSection;
      'sections.rich-text': SectionsRichText;
      'sections.search': SectionsSearch;
      'sections.section-use-case': SectionsSectionUseCase;
      'sections.section-widget-form': SectionsSectionWidgetForm;
      'sections.share-options': SectionsShareOptions;
      'sections.sidebar': SectionsSidebar;
      'sections.social-networks': SectionsSocialNetworks;
      'sections.testimonials-group': SectionsTestimonialsGroup;
      'sections.time-section': SectionsTimeSection;
      'sections.title-section': SectionsTitleSection;
      'texts.icon-text': TextsIconText;
      'texts.link-text': TextsLinkText;
      'use-cases.badge-list': UseCasesBadgeList;
      'use-cases.banner': UseCasesBanner;
      'use-cases.button-list': UseCasesButtonList;
      'use-cases.calculate-use-case': UseCasesCalculateUseCase;
      'use-cases.labels': UseCasesLabels;
      'use-cases.metadata': UseCasesMetadata;
      'use-cases.paragraphs': UseCasesParagraphs;
      'use-cases.products': UseCasesProducts;
      'use-cases.use-cases': UseCasesUseCases;
    }
  }
}
