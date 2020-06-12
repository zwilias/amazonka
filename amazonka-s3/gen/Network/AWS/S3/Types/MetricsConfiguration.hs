{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.MetricsConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.MetricsConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.MetricsFilter

-- | /See:/ 'metricsConfiguration' smart constructor.
data MetricsConfiguration = MetricsConfiguration'{_mcFilter
                                                  :: !(Maybe MetricsFilter),
                                                  _mcId :: !Text}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MetricsConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcFilter' - Specifies a metrics configuration filter. The metrics configuration will only include objects that meet the filter's criteria. A filter must be a prefix, a tag, or a conjunction (MetricsAndOperator).
--
-- * 'mcId' - The ID used to identify the metrics configuration.
metricsConfiguration
    :: Text -- ^ 'mcId'
    -> MetricsConfiguration
metricsConfiguration pId_
  = MetricsConfiguration'{_mcFilter = Nothing,
                          _mcId = pId_}

-- | Specifies a metrics configuration filter. The metrics configuration will only include objects that meet the filter's criteria. A filter must be a prefix, a tag, or a conjunction (MetricsAndOperator).
mcFilter :: Lens' MetricsConfiguration (Maybe MetricsFilter)
mcFilter = lens _mcFilter (\ s a -> s{_mcFilter = a})

-- | The ID used to identify the metrics configuration.
mcId :: Lens' MetricsConfiguration Text
mcId = lens _mcId (\ s a -> s{_mcId = a})

instance FromXML MetricsConfiguration where
        parseXML x
          = MetricsConfiguration' <$>
              (x .@? "Filter") <*> (x .@ "Id")

instance Hashable MetricsConfiguration where

instance NFData MetricsConfiguration where

instance ToXML MetricsConfiguration where
        toXML MetricsConfiguration'{..}
          = mconcat ["Filter" @= _mcFilter, "Id" @= _mcId]
