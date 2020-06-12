{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentVersionInfo
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.DocumentVersionInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.DocumentFormat

-- | Version information about the document.
--
--
--
-- /See:/ 'documentVersionInfo' smart constructor.
data DocumentVersionInfo = DocumentVersionInfo'{_dviCreatedDate
                                                :: !(Maybe POSIX),
                                                _dviDocumentFormat ::
                                                !(Maybe DocumentFormat),
                                                _dviName :: !(Maybe Text),
                                                _dviDocumentVersion ::
                                                !(Maybe Text),
                                                _dviIsDefaultVersion ::
                                                !(Maybe Bool)}
                             deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentVersionInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dviCreatedDate' - The date the document was created.
--
-- * 'dviDocumentFormat' - The document format, either JSON or YAML.
--
-- * 'dviName' - The document name.
--
-- * 'dviDocumentVersion' - The document version.
--
-- * 'dviIsDefaultVersion' - An identifier for the default version of the document.
documentVersionInfo
    :: DocumentVersionInfo
documentVersionInfo
  = DocumentVersionInfo'{_dviCreatedDate = Nothing,
                         _dviDocumentFormat = Nothing, _dviName = Nothing,
                         _dviDocumentVersion = Nothing,
                         _dviIsDefaultVersion = Nothing}

-- | The date the document was created.
dviCreatedDate :: Lens' DocumentVersionInfo (Maybe UTCTime)
dviCreatedDate = lens _dviCreatedDate (\ s a -> s{_dviCreatedDate = a}) . mapping _Time

-- | The document format, either JSON or YAML.
dviDocumentFormat :: Lens' DocumentVersionInfo (Maybe DocumentFormat)
dviDocumentFormat = lens _dviDocumentFormat (\ s a -> s{_dviDocumentFormat = a})

-- | The document name.
dviName :: Lens' DocumentVersionInfo (Maybe Text)
dviName = lens _dviName (\ s a -> s{_dviName = a})

-- | The document version.
dviDocumentVersion :: Lens' DocumentVersionInfo (Maybe Text)
dviDocumentVersion = lens _dviDocumentVersion (\ s a -> s{_dviDocumentVersion = a})

-- | An identifier for the default version of the document.
dviIsDefaultVersion :: Lens' DocumentVersionInfo (Maybe Bool)
dviIsDefaultVersion = lens _dviIsDefaultVersion (\ s a -> s{_dviIsDefaultVersion = a})

instance FromJSON DocumentVersionInfo where
        parseJSON
          = withObject "DocumentVersionInfo"
              (\ x ->
                 DocumentVersionInfo' <$>
                   (x .:? "CreatedDate") <*> (x .:? "DocumentFormat")
                     <*> (x .:? "Name")
                     <*> (x .:? "DocumentVersion")
                     <*> (x .:? "IsDefaultVersion"))

instance Hashable DocumentVersionInfo where

instance NFData DocumentVersionInfo where
