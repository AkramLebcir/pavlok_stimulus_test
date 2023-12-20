import 'strings.dart';

/// The translations for French (`fr`).
class StringsFr extends Strings {
  StringsFr([String locale = 'fr']) : super(locale);

  @override
  String get dashboard => 'Tableau de bord';

  @override
  String get about => 'À propos de';

  @override
  String get selectDate => 'Choisissez une date';

  @override
  String get selectTime => 'Choisissez l\'heure';

  @override
  String get select => 'Sélectionner';

  @override
  String get cancel => 'Annuler';

  @override
  String get pleaseWait => 'S\'il vous plaît, attendez...';

  @override
  String get login => 'Se connecter';

  @override
  String get email => 'E-mail';

  @override
  String get password => 'Mot de passe';

  @override
  String get register => 'Registre';

  @override
  String get askRegister => 'Vous n\'avez pas de compte ?';

  @override
  String get errorInvalidEmail => 'L\'email n\'est pas valide';

  @override
  String get errorEmptyField => 'Ne peut pas être vide';

  @override
  String get errorPasswordLength => 'Le mot de passe doit être au moins de 6 caractères';

  @override
  String get passwordRepeat => 'Répéter le mot de passe';

  @override
  String get errorPasswordNotMatch => 'Le mot de passe ne correspond pas';

  @override
  String get settings => 'Paramètres';

  @override
  String get themeLight => 'Thème Lumière';

  @override
  String get themeDark => 'Thème sombre';

  @override
  String get themeSystem => 'Système de thèmes';

  @override
  String get chooseTheme => 'Choisissez un thème';

  @override
  String get chooseLanguage => 'Choisissez la langue';

  @override
  String get errorNoData => 'Pas de données';

  @override
  String get logout => 'Se déconnecter';

  @override
  String get logoutDesc => 'Voulez-vous vous déconnecter de l\'application?';

  @override
  String get yes => 'Oui';

  @override
  String get createStimulusTitle => 'Créer un stimulus';

  @override
  String get selectType => 'Choisissez le type';

  @override
  String get selectValue => 'Choisissez la valeur';

  @override
  String get createStimulus => 'Créer';

  @override
  String get askForgetYourPassword => 'Mot de passe oublié?';
}
