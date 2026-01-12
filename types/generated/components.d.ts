import type { Schema, Struct } from '@strapi/strapi';

export interface ApisFilters extends Struct.ComponentSchema {
  collectionName: 'components_apis_filters';
  info: {
    icon: 'bezier-curve';
    name: 'Filters';
  };
  attributes: {
    orderByName: Schema.Attribute.String;
    pagination: Schema.Attribute.Component<'apis.pagination', false>;
    projectTypeName: Schema.Attribute.String;
    solutionName: Schema.Attribute.String;
    statusName: Schema.Attribute.String;
    tagsName: Schema.Attribute.String;
    versionName: Schema.Attribute.String;
  };
}

export interface ApisPagination extends Struct.ComponentSchema {
  collectionName: 'components_apis_paginations';
  info: {
    icon: 'compress';
    name: 'Pagination';
  };
  attributes: {
    firstName: Schema.Attribute.String;
    secondName: Schema.Attribute.String;
  };
}

export interface CardsCard extends Struct.ComponentSchema {
  collectionName: 'components_cards_cards';
  info: {
    description: '';
    icon: 'sim-card';
    name: 'card';
  };
  attributes: {
    description: Schema.Attribute.Text;
    descriptionFooter: Schema.Attribute.String;
    descriptionHeader: Schema.Attribute.String;
    icon: Schema.Attribute.String;
    image: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    LinkName: Schema.Attribute.String;
    LinkUrl: Schema.Attribute.String;
    steps: Schema.Attribute.JSON;
    timeRead: Schema.Attribute.String;
    title: Schema.Attribute.String;
    titleFooter: Schema.Attribute.String;
    version: Schema.Attribute.String;
  };
}

export interface CardsCardProduct extends Struct.ComponentSchema {
  collectionName: 'components_cards_card_products';
  info: {
    description: '';
    icon: 'border-style';
    name: 'ProductCard';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    link: Schema.Attribute.Component<'links.basic-link', false>;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface CardsProductLinkCard extends Struct.ComponentSchema {
  collectionName: 'components_cards_product_link_cards';
  info: {
    icon: 'id-card-alt';
    name: 'ProductLinkCard';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    link: Schema.Attribute.Component<'links.basic-link', false>;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface CardsUseCaseCard extends Struct.ComponentSchema {
  collectionName: 'components_cards_use_case_cards';
  info: {
    description: '';
    icon: 'arrow-alt-circle-up';
    name: 'useCaseCard';
  };
  attributes: {
    badge: Schema.Attribute.Text;
    description: Schema.Attribute.Text;
    estatus: Schema.Attribute.Enumeration<
      ['available', 'deprecated', 'comming_soon']
    >;
    linkText: Schema.Attribute.String;
    linkUrl: Schema.Attribute.String;
    picture: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    statusText: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface CustomCarousel extends Struct.ComponentSchema {
  collectionName: 'components_portal_carousels';
  info: {
    icon: 'caret-right';
    name: 'carousel';
  };
  attributes: {
    slider: Schema.Attribute.String;
    sliderCarousel: Schema.Attribute.Component<'elements.slider', true>;
  };
}

export interface CustomChips extends Struct.ComponentSchema {
  collectionName: 'components_portal_chips';
  info: {
    icon: 'child';
    name: 'chips';
  };
  attributes: {
    color: Schema.Attribute.String;
    name: Schema.Attribute.String;
  };
}

export interface CustomItems extends Struct.ComponentSchema {
  collectionName: 'components_portal_items';
  info: {
    description: '';
    icon: 'th-list';
    name: 'items';
  };
  attributes: {
    description: Schema.Attribute.Text;
    icon: Schema.Attribute.String;
    image: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    title: Schema.Attribute.String;
  };
}

export interface CustomListFilter extends Struct.ComponentSchema {
  collectionName: 'components_portal_list_filters';
  info: {
    icon: 'list';
    name: 'ListFilter';
  };
  attributes: {
    items: Schema.Attribute.Component<'elements.titles', true>;
    Title: Schema.Attribute.String;
  };
}

export interface CustomListRecent extends Struct.ComponentSchema {
  collectionName: 'components_portal_list_recents';
  info: {
    description: '';
    icon: 'list-ol';
    name: 'ListRecent';
  };
  attributes: {
    items: Schema.Attribute.Component<'custom.items', true>;
    title: Schema.Attribute.String;
  };
}

export interface CustomQuestions extends Struct.ComponentSchema {
  collectionName: 'components_portal_questions';
  info: {
    description: '';
    icon: 'question';
    name: 'questions';
  };
  attributes: {
    description: Schema.Attribute.String;
    description_two: Schema.Attribute.RichText;
    img: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    question: Schema.Attribute.String;
    seccion: Schema.Attribute.Enumeration<['Reverse', 'Normal', 'NoImage']>;
  };
}

export interface CustomSectionCard extends Struct.ComponentSchema {
  collectionName: 'components_portal_section_cards';
  info: {
    icon: 'vr-cardboard';
    name: 'sectionCard';
  };
  attributes: {
    description: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface CustomTabCard extends Struct.ComponentSchema {
  collectionName: 'components_portal_tab_cards';
  info: {
    description: '';
    icon: 'sd-card';
    name: 'tabCard';
  };
  attributes: {
    cards: Schema.Attribute.Component<'cards.card', true>;
    img: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    name: Schema.Attribute.String;
    tab: Schema.Attribute.Enumeration<
      ['zero', 'one', 'two', 'three', 'four', 'five']
    >;
  };
}

export interface ElementsBadget extends Struct.ComponentSchema {
  collectionName: 'components_elements_badgets';
  info: {
    description: '';
    icon: 'ad';
    name: 'Badge';
  };
  attributes: {
    title: Schema.Attribute.String;
  };
}

export interface ElementsBasicCard extends Struct.ComponentSchema {
  collectionName: 'components_elements_basic_cards';
  info: {
    icon: 'baseball-ball';
    name: 'basicCard';
  };
  attributes: {
    description: Schema.Attribute.Text;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    link: Schema.Attribute.Component<'links.basic-link', false>;
    subtitle: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface ElementsBigFeature extends Struct.ComponentSchema {
  collectionName: 'components_elements_big_features';
  info: {
    description: '';
    icon: 'battery-quarter';
    name: 'bigFeature';
  };
  attributes: {
    description: Schema.Attribute.Text;
    position: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface ElementsCard extends Struct.ComponentSchema {
  collectionName: 'components_elements_cards';
  info: {
    icon: 'money-check';
    name: 'Card';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface ElementsConfigurationSection extends Struct.ComponentSchema {
  collectionName: 'components_elements_configuration_sections';
  info: {
    displayName: 'ConfigurationSection';
  };
  attributes: {
    ConfiguringVariables: Schema.Attribute.Text & Schema.Attribute.Required;
    ImportingPackages: Schema.Attribute.Text & Schema.Attribute.Required;
    InstallingDependencies: Schema.Attribute.Text & Schema.Attribute.Required;
  };
}

export interface ElementsContainer extends Struct.ComponentSchema {
  collectionName: 'components_elements_containers';
  info: {
    description: '';
    icon: 'archway';
    name: 'Container';
  };
  attributes: {
    badgeInfo: Schema.Attribute.Component<'elements.badget', true>;
    buttonLink: Schema.Attribute.Component<'links.button-link', true>;
    description: Schema.Attribute.Text;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    keyword: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface ElementsCustomRadio extends Struct.ComponentSchema {
  collectionName: 'components_elements_custom_radios';
  info: {
    icon: 'angle-left';
    name: 'customRadio';
  };
  attributes: {
    estatus: Schema.Attribute.Enumeration<['primary', 'secondary']>;
    title: Schema.Attribute.String;
  };
}

export interface ElementsEntry extends Struct.ComponentSchema {
  collectionName: 'components_elements_entries';
  info: {
    description: '';
    icon: 'arrows-alt-v';
    name: 'Entry';
  };
  attributes: {
    content: Schema.Attribute.RichText;
    title: Schema.Attribute.String;
  };
}

export interface ElementsExecutionSection extends Struct.ComponentSchema {
  collectionName: 'components_elements_execution_sections';
  info: {
    displayName: 'ExecutionSection';
  };
  attributes: {
    ExampleFunction: Schema.Attribute.Text & Schema.Attribute.Required;
  };
}

export interface ElementsFeatureColumn extends Struct.ComponentSchema {
  collectionName: 'components_slices_feature_columns';
  info: {
    description: '';
    icon: 'align-center';
    name: 'FeatureColumn';
  };
  attributes: {
    description: Schema.Attribute.Text;
    icon: Schema.Attribute.Media<'images'>;
    keyword: Schema.Attribute.String;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface ElementsFeatureRow extends Struct.ComponentSchema {
  collectionName: 'components_slices_feature_rows';
  info: {
    description: '';
    icon: 'arrows-alt-h';
    name: 'FeatureRow';
  };
  attributes: {
    description: Schema.Attribute.Text;
    icon: Schema.Attribute.Media<'images' | 'videos'>;
    link: Schema.Attribute.Component<'links.link', false>;
    title: Schema.Attribute.String & Schema.Attribute.Required;
  };
}

export interface ElementsFilterVersions extends Struct.ComponentSchema {
  collectionName: 'components_elements_filter_versions';
  info: {
    description: '';
    icon: 'angle-up';
    name: 'GroupRadios';
  };
  attributes: {
    title: Schema.Attribute.String;
    version: Schema.Attribute.Component<'elements.custom-radio', true>;
  };
}

export interface ElementsFooterSection extends Struct.ComponentSchema {
  collectionName: 'components_links_footer_sections';
  info: {
    description: '';
    icon: 'chevron-circle-down';
    name: 'FooterSection';
  };
  attributes: {
    drop: Schema.Attribute.Boolean;
    links: Schema.Attribute.Component<'links.link', true>;
    subtext: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface ElementsFormCheckbox extends Struct.ComponentSchema {
  collectionName: 'components_elements_form_checkboxes';
  info: {
    description: '';
    icon: 'window-close';
    name: 'formCheckbox';
  };
  attributes: {
    isRequired: Schema.Attribute.Boolean;
    links: Schema.Attribute.Component<'links.link', true>;
    name: Schema.Attribute.String;
    text: Schema.Attribute.String;
    type: Schema.Attribute.Enumeration<['checkbox', 'text']>;
    validationMessage: Schema.Attribute.Text;
  };
}

export interface ElementsFormResponse extends Struct.ComponentSchema {
  collectionName: 'components_elements_form_responses';
  info: {
    description: '';
    icon: 'band-aid';
    name: 'FormResponse';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    message: Schema.Attribute.Text;
    show: Schema.Attribute.Boolean;
    title: Schema.Attribute.String;
    type: Schema.Attribute.Enumeration<['success', 'error']>;
  };
}

export interface ElementsImageList extends Struct.ComponentSchema {
  collectionName: 'components_elements_image_lists';
  info: {
    icon: 'border-all';
    name: 'imageList';
  };
  attributes: {
    image: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface ElementsLinkText extends Struct.ComponentSchema {
  collectionName: 'components_elements_link_texts';
  info: {
    icon: 'border-none';
    name: 'linkText';
  };
  attributes: {
    link: Schema.Attribute.Component<'links.link', false>;
    text: Schema.Attribute.String;
  };
}

export interface ElementsLogo extends Struct.ComponentSchema {
  collectionName: 'components_elements_logos';
  info: {
    icon: 'angry';
    name: 'Logo';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    titles: Schema.Attribute.Component<'links.link', true>;
  };
}

export interface ElementsLogotype extends Struct.ComponentSchema {
  collectionName: 'components_elements_logotypes';
  info: {
    description: '';
    icon: 'american-sign-language-interpreting';
    name: 'logotype';
  };
  attributes: {
    altText: Schema.Attribute.String;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    info: Schema.Attribute.Component<'elements.main-hero', false>;
  };
}

export interface ElementsMainHero extends Struct.ComponentSchema {
  collectionName: 'components_elements_main_heroes';
  info: {
    description: '';
    icon: 'allergies';
    name: 'mainHero';
  };
  attributes: {
    isKeywordInverted: Schema.Attribute.Boolean;
    keyword: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface ElementsNavbarColumns extends Struct.ComponentSchema {
  collectionName: 'components_elements_navbar_section';
  info: {
    description: '';
    icon: 'align-justify';
    name: 'navbarSection';
  };
  attributes: {
    drop: Schema.Attribute.Boolean;
    links: Schema.Attribute.Component<'links.link', true>;
    personalizedLink: Schema.Attribute.Component<'links.link', false>;
    title: Schema.Attribute.String;
  };
}

export interface ElementsNotificationBanner extends Struct.ComponentSchema {
  collectionName: 'components_elements_notification_banners';
  info: {
    description: '';
    icon: 'exclamation';
    name: 'NotificationBanner';
  };
  attributes: {
    body: Schema.Attribute.Component<'texts.link-text', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    title: Schema.Attribute.String;
    type: Schema.Attribute.Enumeration<['alert', 'info', 'warning']>;
  };
}

export interface ElementsPlaceholder extends Struct.ComponentSchema {
  collectionName: 'components_elements_placeholders';
  info: {
    description: '';
    icon: 'arrow-circle-down';
    name: 'formInput';
  };
  attributes: {
    isRequired: Schema.Attribute.Boolean;
    label: Schema.Attribute.String;
    name: Schema.Attribute.String;
    placeholder: Schema.Attribute.String;
    type: Schema.Attribute.Enumeration<
      ['text', 'textarea', 'select', 'number', 'password', 'email', 'checkbox']
    >;
    validationMessage: Schema.Attribute.Text;
    value: Schema.Attribute.Text;
  };
}

export interface ElementsRedirectLinks extends Struct.ComponentSchema {
  collectionName: 'components_elements_redirect_links';
  info: {
    icon: 'angle-down';
    name: 'redirectLinks';
  };
  attributes: {
    links: Schema.Attribute.Component<'links.basic-link', true>;
    title: Schema.Attribute.String;
  };
}

export interface ElementsResultSection extends Struct.ComponentSchema {
  collectionName: 'components_elements_result_sections';
  info: {
    displayName: 'ResultSection';
  };
  attributes: {
    DTOWithExampleResponseResultInJSON: Schema.Attribute.JSON &
      Schema.Attribute.Required;
  };
}

export interface ElementsSearchInput extends Struct.ComponentSchema {
  collectionName: 'components_elements_search_inputs';
  info: {
    description: '';
    icon: 'atlas';
    name: 'searchInput';
  };
  attributes: {
    placeholder: Schema.Attribute.String;
    submitButton: Schema.Attribute.Component<'links.button', false>;
  };
}

export interface ElementsSearchOutput extends Struct.ComponentSchema {
  collectionName: 'components_elements_search_outputs';
  info: {
    description: '';
    icon: 'align-left';
    name: 'searchOutput';
  };
  attributes: {
    message: Schema.Attribute.String;
  };
}

export interface ElementsSelect extends Struct.ComponentSchema {
  collectionName: 'components_elements_selects';
  info: {
    icon: 'arrow-circle-right';
    name: 'select';
  };
  attributes: {
    name: Schema.Attribute.String;
    tetretert: Schema.Attribute.Component<'elements.entry', true>;
  };
}

export interface ElementsSlider extends Struct.ComponentSchema {
  collectionName: 'components_elements_sliders';
  info: {
    icon: 'book-open';
    name: 'slider';
  };
  attributes: {
    actionButtons: Schema.Attribute.JSON;
    imgSrc: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    subtitleList: Schema.Attribute.Component<'elements.subtitle', true>;
    title: Schema.Attribute.String;
  };
}

export interface ElementsSocialNetwork extends Struct.ComponentSchema {
  collectionName: 'components_elements_social_networks';
  info: {
    icon: 'align-right';
    name: 'socialNetwork';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    type: Schema.Attribute.Enumeration<
      ['Facebook', 'Instagram', 'Twitter', 'LinkedIn', 'Youtube']
    >;
    url: Schema.Attribute.String;
  };
}

export interface ElementsStatusEnumerable extends Struct.ComponentSchema {
  collectionName: 'components_elements_status_enumerables';
  info: {
    icon: 'adjust';
    name: 'statusEnumerable';
  };
  attributes: {
    status: Schema.Attribute.Enumeration<['enable', 'disable']>;
  };
}

export interface ElementsSubtitle extends Struct.ComponentSchema {
  collectionName: 'components_elements_subtitles';
  info: {
    icon: 'book';
    name: 'subtitle';
  };
  attributes: {
    keyword: Schema.Attribute.String;
    order: Schema.Attribute.Integer;
    text: Schema.Attribute.String;
  };
}

export interface ElementsTestimonial extends Struct.ComponentSchema {
  collectionName: 'components_slices_testimonials';
  info: {
    description: '';
    icon: 'user-check';
    name: 'Testimonial';
  };
  attributes: {
    authorName: Schema.Attribute.String;
    authorTitle: Schema.Attribute.String;
    bigIcon: Schema.Attribute.Media<'images'>;
    buttonLink: Schema.Attribute.Component<'links.button-link', true>;
    description: Schema.Attribute.RichText;
    icon: Schema.Attribute.Media<'images'>;
    keyword: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface ElementsTitles extends Struct.ComponentSchema {
  collectionName: 'components_elements_titles';
  info: {
    description: '';
    icon: 'beer';
    name: 'titles';
  };
  attributes: {
    class: Schema.Attribute.String;
    label: Schema.Attribute.String;
    tab: Schema.Attribute.Enumeration<['one', 'two', 'three', 'four', 'five']>;
    title: Schema.Attribute.String;
  };
}

export interface FormularioButtonForm extends Struct.ComponentSchema {
  collectionName: 'components_formulario_button_forms';
  info: {
    description: '';
    icon: 'arrow-left';
    name: 'ButtonForm';
  };
  attributes: {
    class: Schema.Attribute.Enumeration<['primary', 'secondary', 'tertiary']>;
    link: Schema.Attribute.Component<'links.link', false>;
    name: Schema.Attribute.String;
    order: Schema.Attribute.Integer;
    text: Schema.Attribute.String;
    type: Schema.Attribute.String;
  };
}

export interface FormularioCheckbox extends Struct.ComponentSchema {
  collectionName: 'components_formulario_checkboxes';
  info: {
    description: '';
    icon: 'edit';
    name: 'Checkbox';
  };
  attributes: {
    errorMessage: Schema.Attribute.String;
    isRequired: Schema.Attribute.Boolean;
    label: Schema.Attribute.String;
    name: Schema.Attribute.String;
    order: Schema.Attribute.Integer;
    type: Schema.Attribute.String;
    value: Schema.Attribute.Boolean;
  };
}

export interface FormularioFilterEstatus extends Struct.ComponentSchema {
  collectionName: 'components_formulario_filter_estatuses';
  info: {
    icon: 'air-freshener';
    name: 'FilterEstatus';
  };
  attributes: {
    checkboxes: Schema.Attribute.Component<'formulario.checkbox', true>;
    title: Schema.Attribute.String;
  };
}

export interface FormularioForm extends Struct.ComponentSchema {
  collectionName: 'components_formulario_forms';
  info: {
    description: '';
    icon: 'ambulance';
    name: 'form';
  };
  attributes: {
    buttons: Schema.Attribute.Component<'formulario.button-form', true>;
    checkboxes: Schema.Attribute.Component<'formulario.checkbox', true>;
    inputs: Schema.Attribute.Component<'formulario.input', true>;
    select: Schema.Attribute.Component<'formulario.select-option', true>;
    subtitle: Schema.Attribute.RichText;
    title: Schema.Attribute.Text;
  };
}

export interface FormularioInput extends Struct.ComponentSchema {
  collectionName: 'components_formulario_inputs';
  info: {
    description: '';
    icon: 'sticky-note';
    name: 'Input';
  };
  attributes: {
    errorMessage: Schema.Attribute.String;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    isRequired: Schema.Attribute.Boolean;
    name: Schema.Attribute.String;
    order: Schema.Attribute.Integer;
    placeholder: Schema.Attribute.String;
    type: Schema.Attribute.String;
    value: Schema.Attribute.String;
  };
}

export interface FormularioOption extends Struct.ComponentSchema {
  collectionName: 'components_formulario_options';
  info: {
    description: '';
    icon: 'expand-arrows-alt';
    name: 'Option';
  };
  attributes: {
    selected: Schema.Attribute.String;
    text: Schema.Attribute.String;
    value: Schema.Attribute.String;
  };
}

export interface FormularioSelectOption extends Struct.ComponentSchema {
  collectionName: 'components_formulario_select_options';
  info: {
    description: '';
    icon: 'anchor';
    name: 'SelectOption';
  };
  attributes: {
    errorMessage: Schema.Attribute.String;
    isRequired: Schema.Attribute.Boolean;
    name: Schema.Attribute.String;
    Option: Schema.Attribute.Component<'formulario.option', true>;
    order: Schema.Attribute.Integer;
    type: Schema.Attribute.String;
  };
}

export interface HomeBannerSection extends Struct.ComponentSchema {
  collectionName: 'components_home_banner_sections';
  info: {
    description: '';
    icon: 'arrow-up';
    name: 'BannerSection';
  };
  attributes: {
    background: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    buttons: Schema.Attribute.Component<'links.button', true>;
    search: Schema.Attribute.String;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface HomeBenefitsList extends Struct.ComponentSchema {
  collectionName: 'components_home_benefits_lists';
  info: {
    icon: 'birthday-cake';
    name: 'benefitsList';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface HomeDiscoverSection extends Struct.ComponentSchema {
  collectionName: 'components_home_discover_sections';
  info: {
    description: '';
    icon: 'at';
    name: 'DiscoverSection';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.basic-link', false>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    iconText: Schema.Attribute.String;
    Products: Schema.Attribute.Component<'use-cases.products', true>;
    smallText: Schema.Attribute.String;
    statusApi: Schema.Attribute.Component<'home.status-api', false>;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface HomeKeySection extends Struct.ComponentSchema {
  collectionName: 'components_home_key_sections';
  info: {
    icon: 'bell';
    name: 'KeySection';
  };
  attributes: {
    benefitsList: Schema.Attribute.Component<'home.benefits-list', true>;
    button: Schema.Attribute.Component<'links.basic-link', true>;
    images: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    title: Schema.Attribute.String;
  };
}

export interface HomeStatusApi extends Struct.ComponentSchema {
  collectionName: 'components_home_status_apis';
  info: {
    icon: 'burn';
    name: 'StatusApi';
  };
  attributes: {
    status: Schema.Attribute.Enumeration<['active', 'desactive']>;
    text: Schema.Attribute.String;
  };
}

export interface HomeSteps extends Struct.ComponentSchema {
  collectionName: 'components_home_steps';
  info: {
    icon: 'basketball-ball';
    name: 'Steps';
  };
  attributes: {
    number: Schema.Attribute.String;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface HomeWidgetSection extends Struct.ComponentSchema {
  collectionName: 'components_home_widget_sections';
  info: {
    description: '';
    icon: 'bus';
    name: 'WidgetSection';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.basic-link', false>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    image: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Schema.Attribute.RichText;
    title: Schema.Attribute.String;
  };
}

export interface HomeWorkSection extends Struct.ComponentSchema {
  collectionName: 'components_home_work_sections';
  info: {
    description: '';
    icon: 'book-dead';
    name: 'WorkSection';
  };
  attributes: {
    background: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    buttons: Schema.Attribute.Component<'links.button', true>;
    Steps: Schema.Attribute.Component<'home.steps', true>;
    title: Schema.Attribute.String;
  };
}

export interface LayoutFooter extends Struct.ComponentSchema {
  collectionName: 'components_layout_footers';
  info: {
    icon: 'caret-square-down';
    name: 'Footer';
  };
  attributes: {
    copyright: Schema.Attribute.String;
    idContentType: Schema.Attribute.UID;
    logotype: Schema.Attribute.Component<'elements.logotype', false>;
    redirectLinks: Schema.Attribute.Component<'elements.redirect-links', true>;
    sharing: Schema.Attribute.Component<'elements.social-network', true>;
  };
}

export interface LayoutNavbar extends Struct.ComponentSchema {
  collectionName: 'components_layout_navbars';
  info: {
    description: '';
    icon: 'map-signs';
    name: 'Navbar';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button-link', true>;
    idContentType: Schema.Attribute.UID;
    logotype: Schema.Attribute.Component<'elements.logotype', false>;
    navbarColumns: Schema.Attribute.Component<'elements.navbar-columns', true>;
  };
}

export interface LinksBasicLink extends Struct.ComponentSchema {
  collectionName: 'components_links_basic_links';
  info: {
    description: '';
    icon: 'angle-double-left';
    name: 'basicLink';
  };
  attributes: {
    name: Schema.Attribute.String;
    target: Schema.Attribute.Enumeration<['_self', '_blank']>;
    url: Schema.Attribute.String;
  };
}

export interface LinksBigLink extends Struct.ComponentSchema {
  collectionName: 'components_links_big_links';
  info: {
    description: '';
    icon: 'asterisk';
    name: 'bigLink';
  };
  attributes: {
    altText: Schema.Attribute.String;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    link: Schema.Attribute.Component<'links.link', false>;
    status: Schema.Attribute.Enumeration<['enabled', 'disabled']>;
  };
}

export interface LinksButton extends Struct.ComponentSchema {
  collectionName: 'components_links_simple_buttons';
  info: {
    description: '';
    icon: 'fingerprint';
    name: 'Button';
  };
  attributes: {
    class: Schema.Attribute.Enumeration<
      [
        'primary',
        'secondary',
        'secundaryWhite',
        'tertiary',
        'tertiaryWhite',
        'ghost',
        'ghostVariant',
        'greeyPrimary',
        'disabled',
      ]
    >;
    link: Schema.Attribute.String;
    name: Schema.Attribute.String;
    order: Schema.Attribute.Integer;
    type: Schema.Attribute.Enumeration<['primary', 'secondary']>;
  };
}

export interface LinksButtonLink extends Struct.ComponentSchema {
  collectionName: 'components_links_buttons';
  info: {
    description: '';
    icon: 'fingerprint';
    name: 'Button-link';
  };
  attributes: {
    link: Schema.Attribute.Component<'links.link', false>;
    type: Schema.Attribute.Enumeration<['primary', 'secondary']>;
  };
}

export interface LinksDropBigLink extends Struct.ComponentSchema {
  collectionName: 'components_links_drop_big_links';
  info: {
    icon: 'boxes';
    name: 'dropBigLink';
  };
  attributes: {
    bigLinks: Schema.Attribute.Component<'links.big-link', true>;
    mainLink: Schema.Attribute.Component<'links.link', false>;
  };
}

export interface LinksDropLink extends Struct.ComponentSchema {
  collectionName: 'components_links_drop_links';
  info: {
    icon: 'database';
    name: 'dropLink';
  };
  attributes: {
    links: Schema.Attribute.Component<'links.link', true>;
    mainLink: Schema.Attribute.Component<'links.link', false>;
  };
}

export interface LinksIconLink extends Struct.ComponentSchema {
  collectionName: 'components_links_icon_links';
  info: {
    icon: 'battery-three-quarters';
    name: 'iconLink';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    link: Schema.Attribute.Component<'links.link', false>;
  };
}

export interface LinksLink extends Struct.ComponentSchema {
  collectionName: 'components_links_links';
  info: {
    description: '';
    icon: 'link';
    name: 'Link';
  };
  attributes: {
    name: Schema.Attribute.String;
    target: Schema.Attribute.Enumeration<['_self', '_blank']> &
      Schema.Attribute.DefaultTo<'_self'>;
    url: Schema.Attribute.String;
  };
}

export interface LinksShareList extends Struct.ComponentSchema {
  collectionName: 'components_links_share_lists';
  info: {
    icon: 'bread-slice';
    name: 'ShareList';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    target: Schema.Attribute.Enumeration<['_self', '_blank']>;
    url: Schema.Attribute.Text;
  };
}

export interface LinksSubLink extends Struct.ComponentSchema {
  collectionName: 'components_links_sub_links';
  info: {
    icon: 'arrow-right';
    name: 'SubLink';
  };
  attributes: {
    descripcion: Schema.Attribute.String;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    name: Schema.Attribute.String;
  };
}

export interface MetaMetadata extends Struct.ComponentSchema {
  collectionName: 'components_meta_metadata';
  info: {
    description: '';
    icon: 'robot';
    name: 'Metadata';
  };
  attributes: {
    metaDescription: Schema.Attribute.Text;
    metaTitle: Schema.Attribute.String;
  };
}

export interface NewCardList extends Struct.ComponentSchema {
  collectionName: 'components_new_card_lists';
  info: {
    icon: 'barcode';
    name: 'CardList';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    url: Schema.Attribute.String;
  };
}

export interface NewCardsList extends Struct.ComponentSchema {
  collectionName: 'components_new_cards_lists';
  info: {
    icon: 'box-open';
    name: 'cardsList';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    url: Schema.Attribute.String;
  };
}

export interface NewShare extends Struct.ComponentSchema {
  collectionName: 'components_new_shares';
  info: {
    description: '';
    icon: 'share';
    name: 'Share';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    url: Schema.Attribute.String;
  };
}

export interface NewSharing extends Struct.ComponentSchema {
  collectionName: 'components_new_sharings';
  info: {
    icon: 'share-square';
    name: 'Sharing';
  };
  attributes: {
    shareList: Schema.Attribute.Component<'new.share', true>;
    shareName: Schema.Attribute.String;
  };
}

export interface NewTest extends Struct.ComponentSchema {
  collectionName: 'components_new_tests';
  info: {
    icon: 'ban';
    name: 'test';
  };
  attributes: {
    test: Schema.Attribute.String;
  };
}

export interface SectionsBanner extends Struct.ComponentSchema {
  collectionName: 'components_sections_banners';
  info: {
    icon: 'apple-alt';
    name: 'Banner';
  };
  attributes: {
    buttons: Schema.Attribute.Component<'links.button-link', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    Titles: Schema.Attribute.Component<'elements.main-hero', true>;
  };
}

export interface SectionsBasicContainer extends Struct.ComponentSchema {
  collectionName: 'components_sections_basic_containers';
  info: {
    icon: 'atom';
    name: 'basicContainer';
  };
  attributes: {
    idContentType: Schema.Attribute.UID;
    title: Schema.Attribute.String;
  };
}

export interface SectionsBigContainer extends Struct.ComponentSchema {
  collectionName: 'components_sections_big_containers';
  info: {
    icon: 'assistive-listening-systems';
    name: 'bigContainer';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    title: Schema.Attribute.Component<'elements.main-hero', false>;
  };
}

export interface SectionsBigHero extends Struct.ComponentSchema {
  collectionName: 'components_sections_big_heroes';
  info: {
    icon: 'arrow-alt-circle-left';
    name: 'bigHero';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button-link', true>;
    description: Schema.Attribute.Text;
    header: Schema.Attribute.Component<'elements.main-hero', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
  };
}

export interface SectionsBottomActions extends Struct.ComponentSchema {
  collectionName: 'components_slices_bottom_actions';
  info: {
    description: '';
    icon: 'angle-double-right';
    name: 'BottomActions';
  };
  attributes: {
    buttons: Schema.Attribute.Component<'links.button-link', true>;
    keyword: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface SectionsBreadcumbSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_breadcumb_sections';
  info: {
    description: '';
    icon: 'code';
    name: 'BreadcumbSection';
  };
  attributes: {
    ClimatetradeLink: Schema.Attribute.Component<'links.link', true>;
    DevelopersName: Schema.Attribute.String;
    shareList: Schema.Attribute.Component<'links.share-list', true>;
    shareName: Schema.Attribute.String;
  };
}

export interface SectionsButtonHero extends Struct.ComponentSchema {
  collectionName: 'components_sections_button_heroes';
  info: {
    description: '';
    icon: 'arrow-alt-circle-down';
    name: 'buttonHero';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button-link', true>;
    header: Schema.Attribute.Component<'elements.main-hero', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface SectionsCalculateSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_calculate_sections';
  info: {
    description: '';
    icon: 'strikethrough';
    name: 'CalculateSection';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.basic-link', false>;
    image: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface SectionsCallAction extends Struct.ComponentSchema {
  collectionName: 'components_sections_call_actions';
  info: {
    description: '';
    icon: 'battery-empty';
    name: 'callAction';
  };
  attributes: {
    backgroundIcon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    description: Schema.Attribute.String;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface SectionsClassicContainer extends Struct.ComponentSchema {
  collectionName: 'components_sections_classic_containers';
  info: {
    icon: 'arrow-circle-left';
    name: 'classicContainer';
  };
  attributes: {
    description: Schema.Attribute.Text;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    title: Schema.Attribute.String;
  };
}

export interface SectionsClassicHero extends Struct.ComponentSchema {
  collectionName: 'components_sections_classic_heroes';
  info: {
    icon: 'address-book';
    name: 'classicHero';
  };
  attributes: {
    description: Schema.Attribute.Text;
    header: Schema.Attribute.Component<'elements.main-hero', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
  };
}

export interface SectionsContent extends Struct.ComponentSchema {
  collectionName: 'components_sections_contents';
  info: {
    icon: 'backspace';
    name: 'content';
  };
  attributes: {};
}

export interface SectionsContentSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_content_sections';
  info: {
    icon: 'balance-scale-left';
    name: 'contentSection';
  };
  attributes: {
    title: Schema.Attribute.String;
  };
}

export interface SectionsCookies extends Struct.ComponentSchema {
  collectionName: 'components_sections_cookies';
  info: {
    icon: 'bold';
    name: 'cookies';
  };
  attributes: {
    actions: Schema.Attribute.Component<'links.button', true>;
    info: Schema.Attribute.Component<'elements.notification-banner', false>;
  };
}

export interface SectionsCopyright extends Struct.ComponentSchema {
  collectionName: 'components_sections_copyrights';
  info: {
    icon: 'external-link-alt';
    name: 'copyright';
  };
  attributes: {
    link: Schema.Attribute.Component<'texts.link-text', false>;
    mainText: Schema.Attribute.String;
  };
}

export interface SectionsEntriesList extends Struct.ComponentSchema {
  collectionName: 'components_sections_entries_lists';
  info: {
    description: '';
    icon: 'address-card';
    name: 'EntriesList';
  };
  attributes: {
    description: Schema.Attribute.String;
    Entries: Schema.Attribute.Component<'elements.entry', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    mainHero: Schema.Attribute.Component<'elements.main-hero', false>;
    title: Schema.Attribute.String;
  };
}

export interface SectionsFeatureBasicGroup extends Struct.ComponentSchema {
  collectionName: 'components_sections_feature_basic_groups';
  info: {
    icon: 'angle-double-up';
    name: 'featureBasicGroup';
  };
  attributes: {
    idContentType: Schema.Attribute.UID;
  };
}

export interface SectionsFeatureColumnsGroup extends Struct.ComponentSchema {
  collectionName: 'components_slices_feature_columns_groups';
  info: {
    description: '';
    icon: 'star-of-life';
    name: 'FeatureColumnsGroup';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button-link', true>;
    description: Schema.Attribute.RichText;
    features: Schema.Attribute.Component<'elements.feature-column', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    keyword: Schema.Attribute.String;
    mainHero: Schema.Attribute.Component<'elements.main-hero', true>;
    title: Schema.Attribute.String;
  };
}

export interface SectionsFeatureRowsGroup extends Struct.ComponentSchema {
  collectionName: 'components_slices_feature_rows_groups';
  info: {
    icon: 'bars';
    name: 'FeatureRowsGroup';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button-link', true>;
    description: Schema.Attribute.RichText;
    features: Schema.Attribute.Component<'elements.feature-row', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    keyword: Schema.Attribute.String;
    mainHero: Schema.Attribute.Component<'elements.main-hero', true>;
    title: Schema.Attribute.String;
  };
}

export interface SectionsForAllSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_for_all_sections';
  info: {
    description: '';
    icon: 'check';
    name: 'ForAllSection';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.basic-link', false>;
    cards: Schema.Attribute.Component<'elements.card', true>;
    content: Schema.Attribute.Text;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface SectionsFourthFooterSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_fourth_footer_sections';
  info: {
    icon: 'bowling-ball';
    name: 'FourthFooterSection';
  };
  attributes: {
    buttonAffirmative: Schema.Attribute.Component<'links.basic-link', false>;
    buttonNegative: Schema.Attribute.Component<'links.basic-link', false>;
    IdContentType: Schema.Attribute.String &
      Schema.Attribute.Required &
      Schema.Attribute.Unique;
    text: Schema.Attribute.RichText;
  };
}

export interface SectionsFullHero extends Struct.ComponentSchema {
  collectionName: 'components_sections_full_heroes';
  info: {
    icon: 'balance-scale';
    name: 'fullHero';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button', true>;
    description: Schema.Attribute.Text;
    header: Schema.Attribute.Component<'elements.main-hero', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface SectionsHowWorks extends Struct.ComponentSchema {
  collectionName: 'components_sections_how_works';
  info: {
    icon: 'bone';
    name: 'howWorks';
  };
  attributes: {
    background: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    button: Schema.Attribute.Component<'links.button-link', true>;
    features: Schema.Attribute.Component<'elements.big-feature', true>;
    header: Schema.Attribute.Component<'elements.main-hero', false>;
    icon: Schema.Attribute.Media<'images'>;
    idContentType: Schema.Attribute.UID;
    subtext: Schema.Attribute.String;
  };
}

export interface SectionsIconContainer extends Struct.ComponentSchema {
  collectionName: 'components_sections_icon_containers';
  info: {
    icon: 'baby';
    name: 'iconContainer';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    title: Schema.Attribute.String;
  };
}

export interface SectionsIconHero extends Struct.ComponentSchema {
  collectionName: 'components_sections_icon_heroes';
  info: {
    icon: 'arrow-down';
    name: 'iconHero';
  };
  attributes: {
    header: Schema.Attribute.Component<'elements.main-hero', false>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
  };
}

export interface SectionsIndividualContainer extends Struct.ComponentSchema {
  collectionName: 'components_sections_individual_containers';
  info: {
    icon: 'ankh';
    name: 'individualContainer';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button-link', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    title: Schema.Attribute.String;
  };
}

export interface SectionsLinkHero extends Struct.ComponentSchema {
  collectionName: 'components_sections_link_heroes';
  info: {
    icon: 'angle-right';
    name: 'LinkHero';
  };
  attributes: {
    header: Schema.Attribute.Component<'elements.main-hero', false>;
    idContentType: Schema.Attribute.UID;
    imgSideText: Schema.Attribute.String;
    link: Schema.Attribute.Component<'links.link', false>;
    sideText: Schema.Attribute.String;
    subtitle: Schema.Attribute.String;
  };
}

export interface SectionsLogotype extends Struct.ComponentSchema {
  collectionName: 'components_sections_logotypes';
  info: {
    icon: 'bong';
    name: 'logotype';
  };
  attributes: {
    altText: Schema.Attribute.String;
    mainText: Schema.Attribute.Component<'texts.icon-text', false>;
  };
}

export interface SectionsMainContainer extends Struct.ComponentSchema {
  collectionName: 'components_sections_main_containers';
  info: {
    description: '';
    icon: 'archive';
    name: 'MainContainer';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button-link', false>;
    idContentType: Schema.Attribute.UID;
    title: Schema.Attribute.String;
  };
}

export interface SectionsMainFeatures extends Struct.ComponentSchema {
  collectionName: 'components_sections_main_features';
  info: {
    icon: 'binoculars';
    name: 'mainFeatures';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.button-link', true>;
    features: Schema.Attribute.Component<'elements.big-feature', true>;
    header: Schema.Attribute.Component<'elements.main-hero', false>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
  };
}

export interface SectionsOurProductsSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_our_products_sections';
  info: {
    description: '';
    icon: 'clipboard-list';
    name: 'OurProductsSection';
  };
  attributes: {
    CardProduct: Schema.Attribute.Component<'cards.card-product', true>;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface SectionsQuestionsListSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_questions_list_sections';
  info: {
    description: '';
    icon: 'ellipsis-v';
    name: 'QuestionsListSection';
  };
  attributes: {
    questionsList: Schema.Attribute.Component<'elements.entry', true>;
  };
}

export interface SectionsRichText extends Struct.ComponentSchema {
  collectionName: 'components_sections_rich_texts';
  info: {
    icon: 'text-height';
    name: 'RichText';
  };
  attributes: {
    content: Schema.Attribute.RichText;
  };
}

export interface SectionsSearch extends Struct.ComponentSchema {
  collectionName: 'components_sections_searches';
  info: {
    icon: 'audio-description';
    name: 'Search';
  };
  attributes: {
    idContentType: Schema.Attribute.UID;
    searchInput: Schema.Attribute.Component<'elements.search-input', false>;
    searchOutput: Schema.Attribute.Component<'elements.search-output', false>;
  };
}

export interface SectionsSectionUseCase extends Struct.ComponentSchema {
  collectionName: 'components_sections_section_use_cases';
  info: {
    description: '';
    icon: 'biohazard';
    name: 'sectionUseCase';
  };
  attributes: {
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
    useCaseList: Schema.Attribute.Component<'cards.use-case-card', true>;
  };
}

export interface SectionsSectionWidgetForm extends Struct.ComponentSchema {
  collectionName: 'components_sections_section_widget_forms';
  info: {
    icon: 'arrow-circle-up';
    name: 'sectionWidgetForm';
  };
  attributes: {
    description: Schema.Attribute.Text;
    form: Schema.Attribute.Component<'formulario.form', false>;
    picture: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
  };
}

export interface SectionsShareOptions extends Struct.ComponentSchema {
  collectionName: 'components_sections_share_options';
  info: {
    icon: 'box';
    name: 'shareOptions';
  };
  attributes: {
    links: Schema.Attribute.Component<'links.icon-link', true>;
    title: Schema.Attribute.String;
  };
}

export interface SectionsSidebar extends Struct.ComponentSchema {
  collectionName: 'components_sections_sidebars';
  info: {
    description: '';
    icon: 'angle-double-down';
    name: 'Sidebar';
  };
  attributes: {
    Entries: Schema.Attribute.Component<'elements.entry', true>;
    idContentType: Schema.Attribute.UID;
  };
}

export interface SectionsSocialNetworks extends Struct.ComponentSchema {
  collectionName: 'components_sections_social_networks';
  info: {
    icon: 'arrows-alt';
    name: 'socialNetworks';
  };
  attributes: {
    sharingContent: Schema.Attribute.Component<'elements.social-network', true>;
  };
}

export interface SectionsTestimonialsGroup extends Struct.ComponentSchema {
  collectionName: 'components_slices_testimonials_groups';
  info: {
    description: '';
    icon: 'user-friends';
    name: 'TestimonialsGroup';
  };
  attributes: {
    description: Schema.Attribute.Text;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    idContentType: Schema.Attribute.UID;
    keyword: Schema.Attribute.String;
    link: Schema.Attribute.Component<'links.link', false>;
    mainHero: Schema.Attribute.Component<'elements.main-hero', true>;
    testimonials: Schema.Attribute.Component<'elements.testimonial', true>;
    title: Schema.Attribute.String;
  };
}

export interface SectionsTimeSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_time_sections';
  info: {
    description: '';
    icon: 'history';
    name: 'TimeSection';
  };
  attributes: {
    button: Schema.Attribute.Component<'links.basic-link', false>;
    images: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface SectionsTitleSection extends Struct.ComponentSchema {
  collectionName: 'components_sections_title_sections';
  info: {
    description: '';
    icon: 'grip-lines';
    name: 'TitleSection';
  };
  attributes: {
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface TextsIconText extends Struct.ComponentSchema {
  collectionName: 'components_texts_icon_texts';
  info: {
    icon: 'award';
    name: 'iconText';
  };
  attributes: {
    altText: Schema.Attribute.String;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    name: Schema.Attribute.String;
  };
}

export interface TextsLinkText extends Struct.ComponentSchema {
  collectionName: 'components_texts_link_texts';
  info: {
    icon: 'arrow-alt-circle-right';
    name: 'linkText';
  };
  attributes: {
    link: Schema.Attribute.Component<'links.link', true>;
    text: Schema.Attribute.String;
  };
}

export interface UseCasesBadgeList extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_badge_lists';
  info: {
    icon: 'bacon';
    name: 'badgeList';
  };
  attributes: {
    name: Schema.Attribute.String;
  };
}

export interface UseCasesBanner extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_banners';
  info: {
    icon: 'window-minimize';
    name: 'banner';
  };
  attributes: {
    buttonList: Schema.Attribute.Component<'use-cases.button-list', true>;
    idContentType: Schema.Attribute.String &
      Schema.Attribute.Required &
      Schema.Attribute.Unique;
    image: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
  };
}

export interface UseCasesButtonList extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_button_lists';
  info: {
    icon: 'bullseye';
    name: 'buttonList';
  };
  attributes: {
    title: Schema.Attribute.String;
    url: Schema.Attribute.String;
  };
}

export interface UseCasesCalculateUseCase extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_calculate_use_cases';
  info: {
    description: '';
    icon: 'circle-notch';
    name: 'CalculateUseCase';
  };
  attributes: {
    buttons: Schema.Attribute.Component<'links.basic-link', true>;
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    Paragraphs: Schema.Attribute.Component<'use-cases.paragraphs', true>;
    Products: Schema.Attribute.Component<'use-cases.products', true>;
    smallText: Schema.Attribute.String;
    title: Schema.Attribute.String;
  };
}

export interface UseCasesLabels extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_labels';
  info: {
    icon: 'ellipsis-h';
    name: 'labels';
  };
  attributes: {
    name: Schema.Attribute.String;
  };
}

export interface UseCasesMetadata extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_metadata';
  info: {
    icon: 'braille';
    name: 'metadata';
  };
  attributes: {
    metaDescription: Schema.Attribute.Text;
    metaTitle: Schema.Attribute.String;
  };
}

export interface UseCasesParagraphs extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_paragraphs';
  info: {
    icon: 'server';
    name: 'Paragraphs';
  };
  attributes: {
    text: Schema.Attribute.Text;
  };
}

export interface UseCasesProducts extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_products';
  info: {
    description: '';
    icon: 'bolt';
    name: 'Products';
  };
  attributes: {
    icon: Schema.Attribute.Media<'images' | 'files' | 'videos'>;
    iconText: Schema.Attribute.String;
    num: Schema.Attribute.BigInteger;
    subtitle: Schema.Attribute.Text;
    title: Schema.Attribute.String;
    url: Schema.Attribute.String;
    verbs: Schema.Attribute.Enumeration<
      ['get', 'post', 'put', 'patch', 'delete']
    >;
  };
}

export interface UseCasesUseCases extends Struct.ComponentSchema {
  collectionName: 'components_use_cases_use_cases';
  info: {
    description: '';
    icon: 'circle';
    name: 'useCases';
  };
  attributes: {};
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
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
      'elements.configuration-section': ElementsConfigurationSection;
      'elements.container': ElementsContainer;
      'elements.custom-radio': ElementsCustomRadio;
      'elements.entry': ElementsEntry;
      'elements.execution-section': ElementsExecutionSection;
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
      'elements.result-section': ElementsResultSection;
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
