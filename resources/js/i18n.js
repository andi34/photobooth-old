/* exported i18n */
import Translator from '../../vendor/simple-translator/src/translator.js';

const translator = new Translator({
    persist: false,
    languages: [
        'de',
        'en',
        'es',
        'fr',
        'gr'
    ],
    defaultLanguage: 'en',
    detectLanguage: false,
    filesLocation: '/resources/lang'
});

window.i18n = function (key) {
    return translator.getTranslationByKey(config.language, key);
}

$(function () {
    translator.load(config.language);
});
