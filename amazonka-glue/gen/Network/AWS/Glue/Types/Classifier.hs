{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Classifier
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.Classifier where

import Network.AWS.Glue.Types.GrokClassifier
import Network.AWS.Glue.Types.JSONClassifier
import Network.AWS.Glue.Types.XMLClassifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Classifiers are written in Python and triggered during a crawl task. You can write your own classifiers to best categorize your data sources and specify the appropriate schemas to use for them. A classifier checks whether a given file is in a format it can handle, and if it is, the classifier creates a schema in the form of a @StructType@ object that matches that data format.
--
--
-- A classifier can be a @grok@ classifier, an XML classifier, or a JSON classifier, asspecified in one of the fields in the @Classifier@ object.
--
--
-- /See:/ 'classifier' smart constructor.
data Classifier = Classifier'{_cGrokClassifier ::
                              !(Maybe GrokClassifier),
                              _cXMLClassifier :: !(Maybe XMLClassifier),
                              _cJSONClassifier :: !(Maybe JSONClassifier)}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Classifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cGrokClassifier' - A @GrokClassifier@ object.
--
-- * 'cXMLClassifier' - An @XMLClassifier@ object.
--
-- * 'cJSONClassifier' - A @JsonClassifier@ object.
classifier
    :: Classifier
classifier
  = Classifier'{_cGrokClassifier = Nothing,
                _cXMLClassifier = Nothing,
                _cJSONClassifier = Nothing}

-- | A @GrokClassifier@ object.
cGrokClassifier :: Lens' Classifier (Maybe GrokClassifier)
cGrokClassifier = lens _cGrokClassifier (\ s a -> s{_cGrokClassifier = a})

-- | An @XMLClassifier@ object.
cXMLClassifier :: Lens' Classifier (Maybe XMLClassifier)
cXMLClassifier = lens _cXMLClassifier (\ s a -> s{_cXMLClassifier = a})

-- | A @JsonClassifier@ object.
cJSONClassifier :: Lens' Classifier (Maybe JSONClassifier)
cJSONClassifier = lens _cJSONClassifier (\ s a -> s{_cJSONClassifier = a})

instance FromJSON Classifier where
        parseJSON
          = withObject "Classifier"
              (\ x ->
                 Classifier' <$>
                   (x .:? "GrokClassifier") <*> (x .:? "XMLClassifier")
                     <*> (x .:? "JsonClassifier"))

instance Hashable Classifier where

instance NFData Classifier where
