{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsSettings
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.HlsSettings where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.HlsAudioTrackType
import Network.AWS.MediaConvert.Types.HlsIFrameOnlyManifest
import Network.AWS.Prelude

-- | Settings for HLS output groups
--
-- /See:/ 'hlsSettings' smart constructor.
data HlsSettings = HlsSettings'{_hsAudioRenditionSets
                                :: !(Maybe Text),
                                _hsIFrameOnlyManifest ::
                                !(Maybe HlsIFrameOnlyManifest),
                                _hsAudioGroupId :: !(Maybe Text),
                                _hsSegmentModifier :: !(Maybe Text),
                                _hsAudioTrackType :: !(Maybe HlsAudioTrackType)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HlsSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsAudioRenditionSets' - List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
--
-- * 'hsIFrameOnlyManifest' - Undocumented member.
--
-- * 'hsAudioGroupId' - Specifies the group to which the audio Rendition belongs.
--
-- * 'hsSegmentModifier' - String concatenated to end of segment filenames. Accepts "Format Identifiers":#format_identifier_parameters.
--
-- * 'hsAudioTrackType' - Undocumented member.
hlsSettings
    :: HlsSettings
hlsSettings
  = HlsSettings'{_hsAudioRenditionSets = Nothing,
                 _hsIFrameOnlyManifest = Nothing,
                 _hsAudioGroupId = Nothing,
                 _hsSegmentModifier = Nothing,
                 _hsAudioTrackType = Nothing}

-- | List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
hsAudioRenditionSets :: Lens' HlsSettings (Maybe Text)
hsAudioRenditionSets = lens _hsAudioRenditionSets (\ s a -> s{_hsAudioRenditionSets = a})

-- | Undocumented member.
hsIFrameOnlyManifest :: Lens' HlsSettings (Maybe HlsIFrameOnlyManifest)
hsIFrameOnlyManifest = lens _hsIFrameOnlyManifest (\ s a -> s{_hsIFrameOnlyManifest = a})

-- | Specifies the group to which the audio Rendition belongs.
hsAudioGroupId :: Lens' HlsSettings (Maybe Text)
hsAudioGroupId = lens _hsAudioGroupId (\ s a -> s{_hsAudioGroupId = a})

-- | String concatenated to end of segment filenames. Accepts "Format Identifiers":#format_identifier_parameters.
hsSegmentModifier :: Lens' HlsSettings (Maybe Text)
hsSegmentModifier = lens _hsSegmentModifier (\ s a -> s{_hsSegmentModifier = a})

-- | Undocumented member.
hsAudioTrackType :: Lens' HlsSettings (Maybe HlsAudioTrackType)
hsAudioTrackType = lens _hsAudioTrackType (\ s a -> s{_hsAudioTrackType = a})

instance FromJSON HlsSettings where
        parseJSON
          = withObject "HlsSettings"
              (\ x ->
                 HlsSettings' <$>
                   (x .:? "audioRenditionSets") <*>
                     (x .:? "iFrameOnlyManifest")
                     <*> (x .:? "audioGroupId")
                     <*> (x .:? "segmentModifier")
                     <*> (x .:? "audioTrackType"))

instance Hashable HlsSettings where

instance NFData HlsSettings where

instance ToJSON HlsSettings where
        toJSON HlsSettings'{..}
          = object
              (catMaybes
                 [("audioRenditionSets" .=) <$> _hsAudioRenditionSets,
                  ("iFrameOnlyManifest" .=) <$> _hsIFrameOnlyManifest,
                  ("audioGroupId" .=) <$> _hsAudioGroupId,
                  ("segmentModifier" .=) <$> _hsSegmentModifier,
                  ("audioTrackType" .=) <$> _hsAudioTrackType])
