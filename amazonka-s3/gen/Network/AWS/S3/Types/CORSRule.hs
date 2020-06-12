{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.CORSRule
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.CORSRule where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal

-- | /See:/ 'corsRule' smart constructor.
data CORSRule = CORSRule'{_crMaxAgeSeconds ::
                          !(Maybe Int),
                          _crAllowedHeaders :: !(Maybe [Text]),
                          _crExposeHeaders :: !(Maybe [Text]),
                          _crAllowedMethods :: ![Text],
                          _crAllowedOrigins :: ![Text]}
                  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CORSRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crMaxAgeSeconds' - The time in seconds that your browser is to cache the preflight response for the specified resource.
--
-- * 'crAllowedHeaders' - Specifies which headers are allowed in a pre-flight OPTIONS request.
--
-- * 'crExposeHeaders' - One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object).
--
-- * 'crAllowedMethods' - Identifies HTTP methods that the domain/origin specified in the rule is allowed to execute.
--
-- * 'crAllowedOrigins' - One or more origins you want customers to be able to access the bucket from.
corsRule
    :: CORSRule
corsRule
  = CORSRule'{_crMaxAgeSeconds = Nothing,
              _crAllowedHeaders = Nothing,
              _crExposeHeaders = Nothing,
              _crAllowedMethods = mempty,
              _crAllowedOrigins = mempty}

-- | The time in seconds that your browser is to cache the preflight response for the specified resource.
crMaxAgeSeconds :: Lens' CORSRule (Maybe Int)
crMaxAgeSeconds = lens _crMaxAgeSeconds (\ s a -> s{_crMaxAgeSeconds = a})

-- | Specifies which headers are allowed in a pre-flight OPTIONS request.
crAllowedHeaders :: Lens' CORSRule [Text]
crAllowedHeaders = lens _crAllowedHeaders (\ s a -> s{_crAllowedHeaders = a}) . _Default . _Coerce

-- | One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object).
crExposeHeaders :: Lens' CORSRule [Text]
crExposeHeaders = lens _crExposeHeaders (\ s a -> s{_crExposeHeaders = a}) . _Default . _Coerce

-- | Identifies HTTP methods that the domain/origin specified in the rule is allowed to execute.
crAllowedMethods :: Lens' CORSRule [Text]
crAllowedMethods = lens _crAllowedMethods (\ s a -> s{_crAllowedMethods = a}) . _Coerce

-- | One or more origins you want customers to be able to access the bucket from.
crAllowedOrigins :: Lens' CORSRule [Text]
crAllowedOrigins = lens _crAllowedOrigins (\ s a -> s{_crAllowedOrigins = a}) . _Coerce

instance FromXML CORSRule where
        parseXML x
          = CORSRule' <$>
              (x .@? "MaxAgeSeconds") <*>
                (may (parseXMLList "AllowedHeader") x)
                <*> (may (parseXMLList "ExposeHeader") x)
                <*> (parseXMLList "AllowedMethod" x)
                <*> (parseXMLList "AllowedOrigin" x)

instance Hashable CORSRule where

instance NFData CORSRule where

instance ToXML CORSRule where
        toXML CORSRule'{..}
          = mconcat
              ["MaxAgeSeconds" @= _crMaxAgeSeconds,
               toXML
                 (toXMLList "AllowedHeader" <$> _crAllowedHeaders),
               toXML
                 (toXMLList "ExposeHeader" <$> _crExposeHeaders),
               toXMLList "AllowedMethod" _crAllowedMethods,
               toXMLList "AllowedOrigin" _crAllowedOrigins]
