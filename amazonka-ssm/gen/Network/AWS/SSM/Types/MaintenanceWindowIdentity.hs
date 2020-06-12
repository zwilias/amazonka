{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowIdentity
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types.MaintenanceWindowIdentity where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the Maintenance Window.
--
--
--
-- /See:/ 'maintenanceWindowIdentity' smart constructor.
data MaintenanceWindowIdentity = MaintenanceWindowIdentity'{_mwiEnabled
                                                            :: !(Maybe Bool),
                                                            _mwiName ::
                                                            !(Maybe Text),
                                                            _mwiCutoff ::
                                                            !(Maybe Nat),
                                                            _mwiDescription ::
                                                            !(Maybe
                                                                (Sensitive
                                                                   Text)),
                                                            _mwiDuration ::
                                                            !(Maybe Nat),
                                                            _mwiWindowId ::
                                                            !(Maybe Text)}
                                   deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MaintenanceWindowIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwiEnabled' - Whether the Maintenance Window is enabled.
--
-- * 'mwiName' - The name of the Maintenance Window.
--
-- * 'mwiCutoff' - The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
--
-- * 'mwiDescription' - A description of the Maintenance Window.
--
-- * 'mwiDuration' - The duration of the Maintenance Window in hours.
--
-- * 'mwiWindowId' - The ID of the Maintenance Window.
maintenanceWindowIdentity
    :: MaintenanceWindowIdentity
maintenanceWindowIdentity
  = MaintenanceWindowIdentity'{_mwiEnabled = Nothing,
                               _mwiName = Nothing, _mwiCutoff = Nothing,
                               _mwiDescription = Nothing,
                               _mwiDuration = Nothing, _mwiWindowId = Nothing}

-- | Whether the Maintenance Window is enabled.
mwiEnabled :: Lens' MaintenanceWindowIdentity (Maybe Bool)
mwiEnabled = lens _mwiEnabled (\ s a -> s{_mwiEnabled = a})

-- | The name of the Maintenance Window.
mwiName :: Lens' MaintenanceWindowIdentity (Maybe Text)
mwiName = lens _mwiName (\ s a -> s{_mwiName = a})

-- | The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
mwiCutoff :: Lens' MaintenanceWindowIdentity (Maybe Natural)
mwiCutoff = lens _mwiCutoff (\ s a -> s{_mwiCutoff = a}) . mapping _Nat

-- | A description of the Maintenance Window.
mwiDescription :: Lens' MaintenanceWindowIdentity (Maybe Text)
mwiDescription = lens _mwiDescription (\ s a -> s{_mwiDescription = a}) . mapping _Sensitive

-- | The duration of the Maintenance Window in hours.
mwiDuration :: Lens' MaintenanceWindowIdentity (Maybe Natural)
mwiDuration = lens _mwiDuration (\ s a -> s{_mwiDuration = a}) . mapping _Nat

-- | The ID of the Maintenance Window.
mwiWindowId :: Lens' MaintenanceWindowIdentity (Maybe Text)
mwiWindowId = lens _mwiWindowId (\ s a -> s{_mwiWindowId = a})

instance FromJSON MaintenanceWindowIdentity where
        parseJSON
          = withObject "MaintenanceWindowIdentity"
              (\ x ->
                 MaintenanceWindowIdentity' <$>
                   (x .:? "Enabled") <*> (x .:? "Name") <*>
                     (x .:? "Cutoff")
                     <*> (x .:? "Description")
                     <*> (x .:? "Duration")
                     <*> (x .:? "WindowId"))

instance Hashable MaintenanceWindowIdentity where

instance NFData MaintenanceWindowIdentity where
