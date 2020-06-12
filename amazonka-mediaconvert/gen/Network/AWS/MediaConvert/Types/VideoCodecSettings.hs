{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoCodecSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.VideoCodecSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.FrameCaptureSettings
import Network.AWS.MediaConvert.Types.H264Settings
import Network.AWS.MediaConvert.Types.H265Settings
import Network.AWS.MediaConvert.Types.Mpeg2Settings
import Network.AWS.MediaConvert.Types.ProresSettings
import Network.AWS.MediaConvert.Types.VideoCodec
import Network.AWS.Prelude

-- | Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value you choose for Video codec (Codec). For each codec enum you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * FRAME_CAPTURE, FrameCaptureSettings
--
-- /See:/ 'videoCodecSettings' smart constructor.
data VideoCodecSettings = VideoCodecSettings'{_vcsFrameCaptureSettings
                                              :: !(Maybe FrameCaptureSettings),
                                              _vcsCodec :: !(Maybe VideoCodec),
                                              _vcsH265Settings ::
                                              !(Maybe H265Settings),
                                              _vcsProresSettings ::
                                              !(Maybe ProresSettings),
                                              _vcsH264Settings ::
                                              !(Maybe H264Settings),
                                              _vcsMpeg2Settings ::
                                              !(Maybe Mpeg2Settings)}
                            deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VideoCodecSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcsFrameCaptureSettings' - Undocumented member.
--
-- * 'vcsCodec' - Undocumented member.
--
-- * 'vcsH265Settings' - Undocumented member.
--
-- * 'vcsProresSettings' - Undocumented member.
--
-- * 'vcsH264Settings' - Undocumented member.
--
-- * 'vcsMpeg2Settings' - Undocumented member.
videoCodecSettings
    :: VideoCodecSettings
videoCodecSettings
  = VideoCodecSettings'{_vcsFrameCaptureSettings =
                          Nothing,
                        _vcsCodec = Nothing, _vcsH265Settings = Nothing,
                        _vcsProresSettings = Nothing,
                        _vcsH264Settings = Nothing,
                        _vcsMpeg2Settings = Nothing}

-- | Undocumented member.
vcsFrameCaptureSettings :: Lens' VideoCodecSettings (Maybe FrameCaptureSettings)
vcsFrameCaptureSettings = lens _vcsFrameCaptureSettings (\ s a -> s{_vcsFrameCaptureSettings = a})

-- | Undocumented member.
vcsCodec :: Lens' VideoCodecSettings (Maybe VideoCodec)
vcsCodec = lens _vcsCodec (\ s a -> s{_vcsCodec = a})

-- | Undocumented member.
vcsH265Settings :: Lens' VideoCodecSettings (Maybe H265Settings)
vcsH265Settings = lens _vcsH265Settings (\ s a -> s{_vcsH265Settings = a})

-- | Undocumented member.
vcsProresSettings :: Lens' VideoCodecSettings (Maybe ProresSettings)
vcsProresSettings = lens _vcsProresSettings (\ s a -> s{_vcsProresSettings = a})

-- | Undocumented member.
vcsH264Settings :: Lens' VideoCodecSettings (Maybe H264Settings)
vcsH264Settings = lens _vcsH264Settings (\ s a -> s{_vcsH264Settings = a})

-- | Undocumented member.
vcsMpeg2Settings :: Lens' VideoCodecSettings (Maybe Mpeg2Settings)
vcsMpeg2Settings = lens _vcsMpeg2Settings (\ s a -> s{_vcsMpeg2Settings = a})

instance FromJSON VideoCodecSettings where
        parseJSON
          = withObject "VideoCodecSettings"
              (\ x ->
                 VideoCodecSettings' <$>
                   (x .:? "frameCaptureSettings") <*> (x .:? "codec")
                     <*> (x .:? "h265Settings")
                     <*> (x .:? "proresSettings")
                     <*> (x .:? "h264Settings")
                     <*> (x .:? "mpeg2Settings"))

instance Hashable VideoCodecSettings where

instance NFData VideoCodecSettings where

instance ToJSON VideoCodecSettings where
        toJSON VideoCodecSettings'{..}
          = object
              (catMaybes
                 [("frameCaptureSettings" .=) <$>
                    _vcsFrameCaptureSettings,
                  ("codec" .=) <$> _vcsCodec,
                  ("h265Settings" .=) <$> _vcsH265Settings,
                  ("proresSettings" .=) <$> _vcsProresSettings,
                  ("h264Settings" .=) <$> _vcsH264Settings,
                  ("mpeg2Settings" .=) <$> _vcsMpeg2Settings])
