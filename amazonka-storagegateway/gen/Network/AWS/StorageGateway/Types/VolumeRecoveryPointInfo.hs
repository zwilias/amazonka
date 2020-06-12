{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.VolumeRecoveryPointInfo
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.StorageGateway.Types.VolumeRecoveryPointInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | /See:/ 'volumeRecoveryPointInfo' smart constructor.
data VolumeRecoveryPointInfo = VolumeRecoveryPointInfo'{_vrpiVolumeRecoveryPointTime
                                                        :: !(Maybe Text),
                                                        _vrpiVolumeARN ::
                                                        !(Maybe Text),
                                                        _vrpiVolumeSizeInBytes
                                                        :: !(Maybe Integer),
                                                        _vrpiVolumeUsageInBytes
                                                        :: !(Maybe Integer)}
                                 deriving (Eq, Read, Show, Data, Typeable,
                                           Generic)

-- | Creates a value of 'VolumeRecoveryPointInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrpiVolumeRecoveryPointTime' - Undocumented member.
--
-- * 'vrpiVolumeARN' - Undocumented member.
--
-- * 'vrpiVolumeSizeInBytes' - Undocumented member.
--
-- * 'vrpiVolumeUsageInBytes' - Undocumented member.
volumeRecoveryPointInfo
    :: VolumeRecoveryPointInfo
volumeRecoveryPointInfo
  = VolumeRecoveryPointInfo'{_vrpiVolumeRecoveryPointTime
                               = Nothing,
                             _vrpiVolumeARN = Nothing,
                             _vrpiVolumeSizeInBytes = Nothing,
                             _vrpiVolumeUsageInBytes = Nothing}

-- | Undocumented member.
vrpiVolumeRecoveryPointTime :: Lens' VolumeRecoveryPointInfo (Maybe Text)
vrpiVolumeRecoveryPointTime = lens _vrpiVolumeRecoveryPointTime (\ s a -> s{_vrpiVolumeRecoveryPointTime = a})

-- | Undocumented member.
vrpiVolumeARN :: Lens' VolumeRecoveryPointInfo (Maybe Text)
vrpiVolumeARN = lens _vrpiVolumeARN (\ s a -> s{_vrpiVolumeARN = a})

-- | Undocumented member.
vrpiVolumeSizeInBytes :: Lens' VolumeRecoveryPointInfo (Maybe Integer)
vrpiVolumeSizeInBytes = lens _vrpiVolumeSizeInBytes (\ s a -> s{_vrpiVolumeSizeInBytes = a})

-- | Undocumented member.
vrpiVolumeUsageInBytes :: Lens' VolumeRecoveryPointInfo (Maybe Integer)
vrpiVolumeUsageInBytes = lens _vrpiVolumeUsageInBytes (\ s a -> s{_vrpiVolumeUsageInBytes = a})

instance FromJSON VolumeRecoveryPointInfo where
        parseJSON
          = withObject "VolumeRecoveryPointInfo"
              (\ x ->
                 VolumeRecoveryPointInfo' <$>
                   (x .:? "VolumeRecoveryPointTime") <*>
                     (x .:? "VolumeARN")
                     <*> (x .:? "VolumeSizeInBytes")
                     <*> (x .:? "VolumeUsageInBytes"))

instance Hashable VolumeRecoveryPointInfo where

instance NFData VolumeRecoveryPointInfo where
