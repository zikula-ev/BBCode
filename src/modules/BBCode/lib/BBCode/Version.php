<?php

/**
 * @package Zikula_Utility_Modules
 * @subpackage BBCode
 * @license http://www.gnu.org/copyleft/gpl.html
*/

class BBCode_Version extends Zikula_AbstractVersion
{
    public function getMetaData()
    {
        $meta = array();
        $meta['oldnames']         = array('pn_bbcode','bbcode');
        $meta['version']          = '3.0.0';
        $meta['id']               = '164';
        $meta['description']      = __('BBCode is a transform hook that converts usual BBCode tags into html.');
        $meta['displayname']      = __('BBCode Hook');
        //! module url (lower case without spaces and different to displayname)
        $meta['url']              = 'bbcode';
        $meta['securityschema']   = array('BBCode:Modulename:Links'  => '::',
                                          'BBCode:Modulename:Emails' => '::');
        $meta['capabilities']     = array(HookUtil::PROVIDER_CAPABLE => array('enabled' => true));
        return $meta;
    }

    protected function setupHookBundles()
    {
        $bundle = new Zikula_HookManager_ProviderBundle($this->name, 'provider.bbcode.filter_hooks.bbcode', 'filter_hooks', __('BBCode filter hook'));
        $bundle->addStaticHandler('filter', 'BBCode_HookHandler_Code', 'filter', 'bbcode.code');
        $this->registerHookProviderBundle($bundle);   
    }

}
