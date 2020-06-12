{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types.ExtraParam
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53Domains.Types.ExtraParam where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Route53Domains.Types.ExtraParamName

-- | ExtraParam includes the following elements.
--
--
--
-- /See:/ 'extraParam' smart constructor.
data ExtraParam = ExtraParam'{_epName ::
                              !ExtraParamName,
                              _epValue :: !Text}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExtraParam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epName' - Name of the additional parameter required by the top-level domain. Here are the top-level domains that require additional parameters and which parameters they require:     * __.com.au and .net.au:__ @AU_ID_NUMBER@ and @AU_ID_TYPE@      * __.ca:__ @BRAND_NUMBER@ , @CA_LEGAL_TYPE@ , and @CA_BUSINESS_ENTITY_TYPE@      * __.es:__ @ES_IDENTIFICATION@ , @ES_IDENTIFICATION_TYPE@ , and @ES_LEGAL_FORM@      * __.fi:__ @BIRTH_DATE_IN_YYYY_MM_DD@ , @FI_BUSINESS_NUMBER@ , @FI_ID_NUMBER@ , @FI_NATIONALITY@ , and @FI_ORGANIZATION_TYPE@      * __.fr:__ @BRAND_NUMBER@ , @BIRTH_DEPARTMENT@ , @BIRTH_DATE_IN_YYYY_MM_DD@ , @BIRTH_COUNTRY@ , and @BIRTH_CITY@      * __.it:__ @BIRTH_COUNTRY@ , @IT_PIN@ , and @IT_REGISTRANT_ENTITY_TYPE@      * __.ru:__ @BIRTH_DATE_IN_YYYY_MM_DD@ and @RU_PASSPORT_DATA@      * __.se:__ @BIRTH_COUNTRY@ and @SE_ID_NUMBER@      * __.sg:__ @SG_ID_NUMBER@      * __.co.uk, .me.uk, and .org.uk:__ @UK_CONTACT_TYPE@ and @UK_COMPANY_NUMBER@  In addition, many TLDs require @VAT_NUMBER@ .
--
-- * 'epValue' - Values corresponding to the additional parameter names required by some top-level domains.
extraParam
    :: ExtraParamName -- ^ 'epName'
    -> Text -- ^ 'epValue'
    -> ExtraParam
extraParam pName_ pValue_
  = ExtraParam'{_epName = pName_, _epValue = pValue_}

-- | Name of the additional parameter required by the top-level domain. Here are the top-level domains that require additional parameters and which parameters they require:     * __.com.au and .net.au:__ @AU_ID_NUMBER@ and @AU_ID_TYPE@      * __.ca:__ @BRAND_NUMBER@ , @CA_LEGAL_TYPE@ , and @CA_BUSINESS_ENTITY_TYPE@      * __.es:__ @ES_IDENTIFICATION@ , @ES_IDENTIFICATION_TYPE@ , and @ES_LEGAL_FORM@      * __.fi:__ @BIRTH_DATE_IN_YYYY_MM_DD@ , @FI_BUSINESS_NUMBER@ , @FI_ID_NUMBER@ , @FI_NATIONALITY@ , and @FI_ORGANIZATION_TYPE@      * __.fr:__ @BRAND_NUMBER@ , @BIRTH_DEPARTMENT@ , @BIRTH_DATE_IN_YYYY_MM_DD@ , @BIRTH_COUNTRY@ , and @BIRTH_CITY@      * __.it:__ @BIRTH_COUNTRY@ , @IT_PIN@ , and @IT_REGISTRANT_ENTITY_TYPE@      * __.ru:__ @BIRTH_DATE_IN_YYYY_MM_DD@ and @RU_PASSPORT_DATA@      * __.se:__ @BIRTH_COUNTRY@ and @SE_ID_NUMBER@      * __.sg:__ @SG_ID_NUMBER@      * __.co.uk, .me.uk, and .org.uk:__ @UK_CONTACT_TYPE@ and @UK_COMPANY_NUMBER@  In addition, many TLDs require @VAT_NUMBER@ .
epName :: Lens' ExtraParam ExtraParamName
epName = lens _epName (\ s a -> s{_epName = a})

-- | Values corresponding to the additional parameter names required by some top-level domains.
epValue :: Lens' ExtraParam Text
epValue = lens _epValue (\ s a -> s{_epValue = a})

instance FromJSON ExtraParam where
        parseJSON
          = withObject "ExtraParam"
              (\ x ->
                 ExtraParam' <$> (x .: "Name") <*> (x .: "Value"))

instance Hashable ExtraParam where

instance NFData ExtraParam where

instance ToJSON ExtraParam where
        toJSON ExtraParam'{..}
          = object
              (catMaybes
                 [Just ("Name" .= _epName),
                  Just ("Value" .= _epValue)])
