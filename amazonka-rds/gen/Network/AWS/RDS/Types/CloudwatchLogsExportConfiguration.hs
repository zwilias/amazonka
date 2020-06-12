{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.CloudwatchLogsExportConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.RDS.Types.CloudwatchLogsExportConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance or DB cluster.
--
--
--
-- /See:/ 'cloudwatchLogsExportConfiguration' smart constructor.
data CloudwatchLogsExportConfiguration = CloudwatchLogsExportConfiguration'{_clecDisableLogTypes
                                                                            ::
                                                                            !(Maybe
                                                                                [Text]),
                                                                            _clecEnableLogTypes
                                                                            ::
                                                                            !(Maybe
                                                                                [Text])}
                                           deriving (Eq, Read, Show, Data,
                                                     Typeable, Generic)

-- | Creates a value of 'CloudwatchLogsExportConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clecDisableLogTypes' - The list of log types to disable.
--
-- * 'clecEnableLogTypes' - The list of log types to enable.
cloudwatchLogsExportConfiguration
    :: CloudwatchLogsExportConfiguration
cloudwatchLogsExportConfiguration
  = CloudwatchLogsExportConfiguration'{_clecDisableLogTypes
                                         = Nothing,
                                       _clecEnableLogTypes = Nothing}

-- | The list of log types to disable.
clecDisableLogTypes :: Lens' CloudwatchLogsExportConfiguration [Text]
clecDisableLogTypes = lens _clecDisableLogTypes (\ s a -> s{_clecDisableLogTypes = a}) . _Default . _Coerce

-- | The list of log types to enable.
clecEnableLogTypes :: Lens' CloudwatchLogsExportConfiguration [Text]
clecEnableLogTypes = lens _clecEnableLogTypes (\ s a -> s{_clecEnableLogTypes = a}) . _Default . _Coerce

instance Hashable CloudwatchLogsExportConfiguration
         where

instance NFData CloudwatchLogsExportConfiguration
         where

instance ToQuery CloudwatchLogsExportConfiguration
         where
        toQuery CloudwatchLogsExportConfiguration'{..}
          = mconcat
              ["DisableLogTypes" =:
                 toQuery
                   (toQueryList "member" <$> _clecDisableLogTypes),
               "EnableLogTypes" =:
                 toQuery
                   (toQueryList "member" <$> _clecEnableLogTypes)]
