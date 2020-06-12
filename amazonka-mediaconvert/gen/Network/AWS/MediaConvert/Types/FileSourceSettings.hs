{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.FileSourceSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.FileSourceSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.FileSourceConvert608To708
import Network.AWS.Prelude

-- | Settings for File-based Captions in Source
--
-- /See:/ 'fileSourceSettings' smart constructor.
data FileSourceSettings = FileSourceSettings'{_fssConvert608To708
                                              ::
                                              !(Maybe
                                                  FileSourceConvert608To708),
                                              _fssTimeDelta :: !(Maybe Int),
                                              _fssSourceFile :: !(Maybe Text)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FileSourceSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fssConvert608To708' - Undocumented member.
--
-- * 'fssTimeDelta' - Specifies a time delta in seconds to offset the captions from the source file.
--
-- * 'fssSourceFile' - External caption file used for loading captions. Accepted file extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', and 'smi'.
fileSourceSettings
    :: FileSourceSettings
fileSourceSettings
  = FileSourceSettings'{_fssConvert608To708 = Nothing,
                        _fssTimeDelta = Nothing, _fssSourceFile = Nothing}

-- | Undocumented member.
fssConvert608To708 :: Lens' FileSourceSettings (Maybe FileSourceConvert608To708)
fssConvert608To708 = lens _fssConvert608To708 (\ s a -> s{_fssConvert608To708 = a})

-- | Specifies a time delta in seconds to offset the captions from the source file.
fssTimeDelta :: Lens' FileSourceSettings (Maybe Int)
fssTimeDelta = lens _fssTimeDelta (\ s a -> s{_fssTimeDelta = a})

-- | External caption file used for loading captions. Accepted file extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', and 'smi'.
fssSourceFile :: Lens' FileSourceSettings (Maybe Text)
fssSourceFile = lens _fssSourceFile (\ s a -> s{_fssSourceFile = a})

instance FromJSON FileSourceSettings where
        parseJSON
          = withObject "FileSourceSettings"
              (\ x ->
                 FileSourceSettings' <$>
                   (x .:? "convert608To708") <*> (x .:? "timeDelta") <*>
                     (x .:? "sourceFile"))

instance Hashable FileSourceSettings where

instance NFData FileSourceSettings where

instance ToJSON FileSourceSettings where
        toJSON FileSourceSettings'{..}
          = object
              (catMaybes
                 [("convert608To708" .=) <$> _fssConvert608To708,
                  ("timeDelta" .=) <$> _fssTimeDelta,
                  ("sourceFile" .=) <$> _fssSourceFile])
