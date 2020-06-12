{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.PatchFilter
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.PatchFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.PatchFilterKey

-- | Defines a patch filter.
--
--
-- A patch filter consists of key/value pairs, but not all keys are valid for all operating system types. For example, the key @PRODUCT@ is valid for all supported operating system types. The key @MSRC_SEVERITY@ , however, is valid only for Windows operating systems, and the key @SECTION@ is valid only for Ubuntu operating systems.
--
-- Refer to the following sections for information about which keys may be used with each major operating system, and which values are valid for each key.
--
-- __Windows Operating Systems__ 
--
-- The supported keys for Windows operating systems are @PRODUCT@ , @CLASSIFICATION@ , and @MSRC_SEVERITY@ . See the following lists for valid values for each of these keys.
--
-- /Supported key:/ @PRODUCT@ 
--
-- /Supported values:/ 
--
--     * @Windows7@ 
--
--     * @Windows8@ 
--
--     * @Windows8.1@ 
--
--     * @Windows8Embedded@ 
--
--     * @Windows10@ 
--
--     * @Windows10LTSB@ 
--
--     * @WindowsServer2008@ 
--
--     * @WindowsServer2008R2@ 
--
--     * @WindowsServer2012@ 
--
--     * @WindowsServer2012R2@ 
--
--     * @WindowsServer2016@ 
--
--
--
-- /Supported key:/ @CLASSIFICATION@ 
--
-- /Supported values:/ 
--
--     * @CriticalUpdates@ 
--
--     * @DefinitionUpdates@ 
--
--     * @Drivers@ 
--
--     * @FeaturePacks@ 
--
--     * @SecurityUpdates@ 
--
--     * @ServicePacks@ 
--
--     * @Tools@ 
--
--     * @UpdateRollups@ 
--
--     * @Updates@ 
--
--     * @Upgrades@ 
--
--
--
-- /Supported key:/ @MSRC_SEVERITY@ 
--
-- /Supported values:/ 
--
--     * @Critical@ 
--
--     * @Important@ 
--
--     * @Moderate@ 
--
--     * @Low@ 
--
--     * @Unspecified@ 
--
--
--
-- __Ubuntu Operating Systems__ 
--
-- The supported keys for Ubuntu operating systems are @PRODUCT@ , @PRIORITY@ , and @SECTION@ . See the following lists for valid values for each of these keys.
--
-- /Supported key:/ @PRODUCT@ 
--
-- /Supported values:/ 
--
--     * @Ubuntu14.04@ 
--
--     * @Ubuntu16.04@ 
--
--
--
-- /Supported key:/ @PRIORITY@ 
--
-- /Supported values:/ 
--
--     * @Required@ 
--
--     * @Important@ 
--
--     * @Standard@ 
--
--     * @Optional@ 
--
--     * @Extra@ 
--
--
--
-- /Supported key:/ @SECTION@ 
--
-- Only the length of the key value is validated. Minimum length is 1. Maximum length is 64.
--
-- __Amazon Linux Operating Systems__ 
--
-- The supported keys for Amazon Linux operating systems are @PRODUCT@ , @CLASSIFICATION@ , and @SEVERITY@ . See the following lists for valid values for each of these keys.
--
-- /Supported key:/ @PRODUCT@ 
--
-- /Supported values:/ 
--
--     * @AmazonLinux2012.03@ 
--
--     * @AmazonLinux2012.09@ 
--
--     * @AmazonLinux2013.03@ 
--
--     * @AmazonLinux2013.09@ 
--
--     * @AmazonLinux2014.03@ 
--
--     * @AmazonLinux2014.09@ 
--
--     * @AmazonLinux2015.03@ 
--
--     * @AmazonLinux2015.09@ 
--
--     * @AmazonLinux2016.03@ 
--
--     * @AmazonLinux2016.09@ 
--
--     * @AmazonLinux2017.03@ 
--
--     * @AmazonLinux2017.09@ 
--
--
--
-- /Supported key:/ @CLASSIFICATION@ 
--
-- /Supported values:/ 
--
--     * @Security@ 
--
--     * @Bugfix@ 
--
--     * @Enhancement@ 
--
--     * @Recommended@ 
--
--     * @Newpackage@ 
--
--
--
-- /Supported key:/ @SEVERITY@ 
--
-- /Supported values:/ 
--
--     * @Critical@ 
--
--     * @Important@ 
--
--     * @Medium@ 
--
--     * @Low@ 
--
--
--
-- __RedHat Enterprise Linux (RHEL) Operating Systems__ 
--
-- The supported keys for RedHat Enterprise Linux operating systems are @PRODUCT@ , @CLASSIFICATION@ , and @SEVERITY@ . See the following lists for valid values for each of these keys.
--
-- /Supported key:/ @PRODUCT@ 
--
-- /Supported values:/ 
--
--     * @RedhatEnterpriseLinux6.5@ 
--
--     * @RedhatEnterpriseLinux6.6@ 
--
--     * @RedhatEnterpriseLinux6.7@ 
--
--     * @RedhatEnterpriseLinux6.8@ 
--
--     * @RedhatEnterpriseLinux6.9@ 
--
--     * @RedhatEnterpriseLinux7.0@ 
--
--     * @RedhatEnterpriseLinux7.1@ 
--
--     * @RedhatEnterpriseLinux7.2@ 
--
--     * @RedhatEnterpriseLinux7.3@ 
--
--     * @RedhatEnterpriseLinux7.4@ 
--
--
--
-- /Supported key:/ @CLASSIFICATION@ 
--
-- /Supported values:/ 
--
--     * @Security@ 
--
--     * @Bugfix@ 
--
--     * @Enhancement@ 
--
--     * @Recommended@ 
--
--     * @Newpackage@ 
--
--
--
-- /Supported key:/ @SEVERITY@ 
--
-- /Supported values:/ 
--
--     * @Critical@ 
--
--     * @Important@ 
--
--     * @Medium@ 
--
--     * @Low@ 
--
--
--
-- __SUSE Linux Enterprise Server (SLES) Operating Systems__ 
--
-- The supported keys for SLES operating systems are @PRODUCT@ , @CLASSIFICATION@ , and @SEVERITY@ . See the following lists for valid values for each of these keys.
--
-- /Supported key:/ @PRODUCT@ 
--
-- /Supported values:/ 
--
--     * @Suse12.0@ 
--
--     * @Suse12.1@ 
--
--     * @Suse12.2@ 
--
--     * @Suse12.3@ 
--
--     * @Suse12.4@ 
--
--     * @Suse12.5@ 
--
--     * @Suse12.6@ 
--
--     * @Suse12.7@ 
--
--     * @Suse12.8@ 
--
--     * @Suse12.9@ 
--
--
--
-- /Supported key:/ @CLASSIFICATION@ 
--
-- /Supported values:/ 
--
--     * @Security@ 
--
--     * @Recommended@ 
--
--     * @Optional@ 
--
--     * @Feature@ 
--
--     * @Document@ 
--
--     * @Yast@ 
--
--
--
-- /Supported key:/ @SEVERITY@ 
--
-- /Supported values:/ 
--
--     * @Critical@ 
--
--     * @Important@ 
--
--     * @Moderate@ 
--
--     * @Low@ 
--
--
--
-- __CentOS Operating Systems__ 
--
-- The supported keys for CentOS operating systems are @PRODUCT@ , @CLASSIFICATION@ , and @SEVERITY@ . See the following lists for valid values for each of these keys.
--
-- /Supported key:/ @PRODUCT@ 
--
-- /Supported values:/ 
--
--     * @CentOS6.5@ 
--
--     * @CentOS6.6@ 
--
--     * @CentOS6.7@ 
--
--     * @CentOS6.8@ 
--
--     * @CentOS6.9@ 
--
--     * @CentOS7.0@ 
--
--     * @CentOS7.1@ 
--
--     * @CentOS7.2@ 
--
--     * @CentOS7.3@ 
--
--     * @CentOS7.4@ 
--
--
--
-- /Supported key:/ @CLASSIFICATION@ 
--
-- /Supported values:/ 
--
--     * @Security@ 
--
--     * @Bugfix@ 
--
--     * @Enhancement@ 
--
--     * @Recommended@ 
--
--     * @Newpackage@ 
--
--
--
-- /Supported key:/ @SEVERITY@ 
--
-- /Supported values:/ 
--
--     * @Critical@ 
--
--     * @Important@ 
--
--     * @Medium@ 
--
--     * @Low@ 
--
--
--
--
-- /See:/ 'patchFilter' smart constructor.
data PatchFilter = PatchFilter'{_pfKey ::
                                !PatchFilterKey,
                                _pfValues :: !(List1 Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PatchFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfKey' - The key for the filter. See 'PatchFilter' for lists of valid keys for each operating system type.
--
-- * 'pfValues' - The value for the filter key. See 'PatchFilter' for lists of valid values for each key based on operating system type.
patchFilter
    :: PatchFilterKey -- ^ 'pfKey'
    -> NonEmpty Text -- ^ 'pfValues'
    -> PatchFilter
patchFilter pKey_ pValues_
  = PatchFilter'{_pfKey = pKey_,
                 _pfValues = _List1 # pValues_}

-- | The key for the filter. See 'PatchFilter' for lists of valid keys for each operating system type.
pfKey :: Lens' PatchFilter PatchFilterKey
pfKey = lens _pfKey (\ s a -> s{_pfKey = a})

-- | The value for the filter key. See 'PatchFilter' for lists of valid values for each key based on operating system type.
pfValues :: Lens' PatchFilter (NonEmpty Text)
pfValues = lens _pfValues (\ s a -> s{_pfValues = a}) . _List1

instance FromJSON PatchFilter where
        parseJSON
          = withObject "PatchFilter"
              (\ x ->
                 PatchFilter' <$> (x .: "Key") <*> (x .: "Values"))

instance Hashable PatchFilter where

instance NFData PatchFilter where

instance ToJSON PatchFilter where
        toJSON PatchFilter'{..}
          = object
              (catMaybes
                 [Just ("Key" .= _pfKey),
                  Just ("Values" .= _pfValues)])
