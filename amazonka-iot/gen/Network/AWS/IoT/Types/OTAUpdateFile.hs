{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.OTAUpdateFile
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.IoT.Types.OTAUpdateFile where

import Network.AWS.IoT.Types.CodeSigning
import Network.AWS.IoT.Types.Stream
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a file to be associated with an OTA update.
--
--
--
-- /See:/ 'oTAUpdateFile' smart constructor.
data OTAUpdateFile = OTAUpdateFile'{_otaufFileVersion
                                    :: !(Maybe Text),
                                    _otaufAttributes ::
                                    !(Maybe (Map Text Text)),
                                    _otaufFileSource :: !(Maybe Stream),
                                    _otaufCodeSigning :: !(Maybe CodeSigning),
                                    _otaufFileName :: !(Maybe Text)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OTAUpdateFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otaufFileVersion' - The file version.
--
-- * 'otaufAttributes' - A list of name/attribute pairs.
--
-- * 'otaufFileSource' - The source of the file.
--
-- * 'otaufCodeSigning' - The code signing method of the file.
--
-- * 'otaufFileName' - The name of the file.
oTAUpdateFile
    :: OTAUpdateFile
oTAUpdateFile
  = OTAUpdateFile'{_otaufFileVersion = Nothing,
                   _otaufAttributes = Nothing,
                   _otaufFileSource = Nothing,
                   _otaufCodeSigning = Nothing,
                   _otaufFileName = Nothing}

-- | The file version.
otaufFileVersion :: Lens' OTAUpdateFile (Maybe Text)
otaufFileVersion = lens _otaufFileVersion (\ s a -> s{_otaufFileVersion = a})

-- | A list of name/attribute pairs.
otaufAttributes :: Lens' OTAUpdateFile (HashMap Text Text)
otaufAttributes = lens _otaufAttributes (\ s a -> s{_otaufAttributes = a}) . _Default . _Map

-- | The source of the file.
otaufFileSource :: Lens' OTAUpdateFile (Maybe Stream)
otaufFileSource = lens _otaufFileSource (\ s a -> s{_otaufFileSource = a})

-- | The code signing method of the file.
otaufCodeSigning :: Lens' OTAUpdateFile (Maybe CodeSigning)
otaufCodeSigning = lens _otaufCodeSigning (\ s a -> s{_otaufCodeSigning = a})

-- | The name of the file.
otaufFileName :: Lens' OTAUpdateFile (Maybe Text)
otaufFileName = lens _otaufFileName (\ s a -> s{_otaufFileName = a})

instance FromJSON OTAUpdateFile where
        parseJSON
          = withObject "OTAUpdateFile"
              (\ x ->
                 OTAUpdateFile' <$>
                   (x .:? "fileVersion") <*>
                     (x .:? "attributes" .!= mempty)
                     <*> (x .:? "fileSource")
                     <*> (x .:? "codeSigning")
                     <*> (x .:? "fileName"))

instance Hashable OTAUpdateFile where

instance NFData OTAUpdateFile where

instance ToJSON OTAUpdateFile where
        toJSON OTAUpdateFile'{..}
          = object
              (catMaybes
                 [("fileVersion" .=) <$> _otaufFileVersion,
                  ("attributes" .=) <$> _otaufAttributes,
                  ("fileSource" .=) <$> _otaufFileSource,
                  ("codeSigning" .=) <$> _otaufCodeSigning,
                  ("fileName" .=) <$> _otaufFileName])
