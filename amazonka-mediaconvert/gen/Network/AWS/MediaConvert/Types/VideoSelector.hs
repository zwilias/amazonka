{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoSelector
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.VideoSelector where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.ColorSpace
import Network.AWS.MediaConvert.Types.ColorSpaceUsage
import Network.AWS.MediaConvert.Types.Hdr10Metadata
import Network.AWS.Prelude

-- | Selector for video.
--
-- /See:/ 'videoSelector' smart constructor.
data VideoSelector = VideoSelector'{_vsProgramNumber
                                    :: !(Maybe Int),
                                    _vsColorSpaceUsage ::
                                    !(Maybe ColorSpaceUsage),
                                    _vsHdr10Metadata :: !(Maybe Hdr10Metadata),
                                    _vsPid :: !(Maybe Int),
                                    _vsColorSpace :: !(Maybe ColorSpace)}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VideoSelector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsProgramNumber' - Selects a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported.
--
-- * 'vsColorSpaceUsage' - Undocumented member.
--
-- * 'vsHdr10Metadata' - Undocumented member.
--
-- * 'vsPid' - Use PID (Pid) to select specific video data from an input file. Specify this value as an integer; the system automatically converts it to the hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet identifier, is an identifier for a set of data in an MPEG-2 transport stream container.
--
-- * 'vsColorSpace' - Undocumented member.
videoSelector
    :: VideoSelector
videoSelector
  = VideoSelector'{_vsProgramNumber = Nothing,
                   _vsColorSpaceUsage = Nothing,
                   _vsHdr10Metadata = Nothing, _vsPid = Nothing,
                   _vsColorSpace = Nothing}

-- | Selects a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported.
vsProgramNumber :: Lens' VideoSelector (Maybe Int)
vsProgramNumber = lens _vsProgramNumber (\ s a -> s{_vsProgramNumber = a})

-- | Undocumented member.
vsColorSpaceUsage :: Lens' VideoSelector (Maybe ColorSpaceUsage)
vsColorSpaceUsage = lens _vsColorSpaceUsage (\ s a -> s{_vsColorSpaceUsage = a})

-- | Undocumented member.
vsHdr10Metadata :: Lens' VideoSelector (Maybe Hdr10Metadata)
vsHdr10Metadata = lens _vsHdr10Metadata (\ s a -> s{_vsHdr10Metadata = a})

-- | Use PID (Pid) to select specific video data from an input file. Specify this value as an integer; the system automatically converts it to the hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet identifier, is an identifier for a set of data in an MPEG-2 transport stream container.
vsPid :: Lens' VideoSelector (Maybe Int)
vsPid = lens _vsPid (\ s a -> s{_vsPid = a})

-- | Undocumented member.
vsColorSpace :: Lens' VideoSelector (Maybe ColorSpace)
vsColorSpace = lens _vsColorSpace (\ s a -> s{_vsColorSpace = a})

instance FromJSON VideoSelector where
        parseJSON
          = withObject "VideoSelector"
              (\ x ->
                 VideoSelector' <$>
                   (x .:? "programNumber") <*> (x .:? "colorSpaceUsage")
                     <*> (x .:? "hdr10Metadata")
                     <*> (x .:? "pid")
                     <*> (x .:? "colorSpace"))

instance Hashable VideoSelector where

instance NFData VideoSelector where

instance ToJSON VideoSelector where
        toJSON VideoSelector'{..}
          = object
              (catMaybes
                 [("programNumber" .=) <$> _vsProgramNumber,
                  ("colorSpaceUsage" .=) <$> _vsColorSpaceUsage,
                  ("hdr10Metadata" .=) <$> _vsHdr10Metadata,
                  ("pid" .=) <$> _vsPid,
                  ("colorSpace" .=) <$> _vsColorSpace])
