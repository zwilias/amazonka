{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.NoiseReducer
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.NoiseReducer where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.NoiseReducerFilter
import Network.AWS.MediaConvert.Types.NoiseReducerFilterSettings
import Network.AWS.MediaConvert.Types.NoiseReducerSpatialFilterSettings
import Network.AWS.Prelude

-- | Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer (NoiseReducer), you must also select a value for Noise reducer filter (NoiseReducerFilter).
--
-- /See:/ 'noiseReducer' smart constructor.
data NoiseReducer = NoiseReducer'{_nrSpatialFilterSettings
                                  :: !(Maybe NoiseReducerSpatialFilterSettings),
                                  _nrFilterSettings ::
                                  !(Maybe NoiseReducerFilterSettings),
                                  _nrFilter :: !(Maybe NoiseReducerFilter)}
                      deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NoiseReducer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrSpatialFilterSettings' - Undocumented member.
--
-- * 'nrFilterSettings' - Undocumented member.
--
-- * 'nrFilter' - Undocumented member.
noiseReducer
    :: NoiseReducer
noiseReducer
  = NoiseReducer'{_nrSpatialFilterSettings = Nothing,
                  _nrFilterSettings = Nothing, _nrFilter = Nothing}

-- | Undocumented member.
nrSpatialFilterSettings :: Lens' NoiseReducer (Maybe NoiseReducerSpatialFilterSettings)
nrSpatialFilterSettings = lens _nrSpatialFilterSettings (\ s a -> s{_nrSpatialFilterSettings = a})

-- | Undocumented member.
nrFilterSettings :: Lens' NoiseReducer (Maybe NoiseReducerFilterSettings)
nrFilterSettings = lens _nrFilterSettings (\ s a -> s{_nrFilterSettings = a})

-- | Undocumented member.
nrFilter :: Lens' NoiseReducer (Maybe NoiseReducerFilter)
nrFilter = lens _nrFilter (\ s a -> s{_nrFilter = a})

instance FromJSON NoiseReducer where
        parseJSON
          = withObject "NoiseReducer"
              (\ x ->
                 NoiseReducer' <$>
                   (x .:? "spatialFilterSettings") <*>
                     (x .:? "filterSettings")
                     <*> (x .:? "filter"))

instance Hashable NoiseReducer where

instance NFData NoiseReducer where

instance ToJSON NoiseReducer where
        toJSON NoiseReducer'{..}
          = object
              (catMaybes
                 [("spatialFilterSettings" .=) <$>
                    _nrSpatialFilterSettings,
                  ("filterSettings" .=) <$> _nrFilterSettings,
                  ("filter" .=) <$> _nrFilter])
