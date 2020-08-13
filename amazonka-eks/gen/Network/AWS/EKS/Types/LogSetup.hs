{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EKS.Types.LogSetup
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EKS.Types.LogSetup where

import Network.AWS.EKS.Types.LogType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the enabled or disabled Kubernetes control plane logs for your cluster.
--
--
--
-- /See:/ 'logSetup' smart constructor.
data LogSetup = LogSetup'{_lsEnabled ::
                          !(Maybe Bool),
                          _lsTypes :: !(Maybe [LogType])}
                  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LogSetup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsEnabled' - If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control plane logs. Each individual log type can be enabled or disabled independently.
--
-- * 'lsTypes' - The available cluster control plane log types.
logSetup
    :: LogSetup
logSetup
  = LogSetup'{_lsEnabled = Nothing, _lsTypes = Nothing}

-- | If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control plane logs. Each individual log type can be enabled or disabled independently.
lsEnabled :: Lens' LogSetup (Maybe Bool)
lsEnabled = lens _lsEnabled (\ s a -> s{_lsEnabled = a})

-- | The available cluster control plane log types.
lsTypes :: Lens' LogSetup [LogType]
lsTypes = lens _lsTypes (\ s a -> s{_lsTypes = a}) . _Default . _Coerce

instance FromJSON LogSetup where
        parseJSON
          = withObject "LogSetup"
              (\ x ->
                 LogSetup' <$>
                   (x .:? "enabled") <*> (x .:? "types" .!= mempty))

instance Hashable LogSetup where

instance NFData LogSetup where

instance ToJSON LogSetup where
        toJSON LogSetup'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _lsEnabled,
                  ("types" .=) <$> _lsTypes])
