{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.NielsenConfiguration
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.NielsenConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Settings for Nielsen Configuration
--
-- /See:/ 'nielsenConfiguration' smart constructor.
data NielsenConfiguration = NielsenConfiguration'{_ncBreakoutCode
                                                  :: !(Maybe Int),
                                                  _ncDistributorId ::
                                                  !(Maybe Text)}
                              deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NielsenConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncBreakoutCode' - Use Nielsen Configuration (NielsenConfiguration) to set the Nielsen measurement system breakout code. Supported values are 0, 3, 7, and 9.
--
-- * 'ncDistributorId' - Use Distributor ID (DistributorID) to specify the distributor ID that is assigned to your organization by Neilsen.
nielsenConfiguration
    :: NielsenConfiguration
nielsenConfiguration
  = NielsenConfiguration'{_ncBreakoutCode = Nothing,
                          _ncDistributorId = Nothing}

-- | Use Nielsen Configuration (NielsenConfiguration) to set the Nielsen measurement system breakout code. Supported values are 0, 3, 7, and 9.
ncBreakoutCode :: Lens' NielsenConfiguration (Maybe Int)
ncBreakoutCode = lens _ncBreakoutCode (\ s a -> s{_ncBreakoutCode = a})

-- | Use Distributor ID (DistributorID) to specify the distributor ID that is assigned to your organization by Neilsen.
ncDistributorId :: Lens' NielsenConfiguration (Maybe Text)
ncDistributorId = lens _ncDistributorId (\ s a -> s{_ncDistributorId = a})

instance FromJSON NielsenConfiguration where
        parseJSON
          = withObject "NielsenConfiguration"
              (\ x ->
                 NielsenConfiguration' <$>
                   (x .:? "breakoutCode") <*> (x .:? "distributorId"))

instance Hashable NielsenConfiguration where

instance NFData NielsenConfiguration where

instance ToJSON NielsenConfiguration where
        toJSON NielsenConfiguration'{..}
          = object
              (catMaybes
                 [("breakoutCode" .=) <$> _ncBreakoutCode,
                  ("distributorId" .=) <$> _ncDistributorId])
