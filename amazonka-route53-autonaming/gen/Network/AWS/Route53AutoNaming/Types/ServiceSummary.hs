{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Route53AutoNaming.Types.ServiceSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A complex type that contains information about a specified service.
--
--
--
-- /See:/ 'serviceSummary' smart constructor.
data ServiceSummary = ServiceSummary'{_ssInstanceCount
                                      :: !(Maybe Int),
                                      _ssARN :: !(Maybe Text),
                                      _ssName :: !(Maybe Text),
                                      _ssId :: !(Maybe Text),
                                      _ssDescription :: !(Maybe Text)}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServiceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssInstanceCount' - The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count.
--
-- * 'ssARN' - The Amazon Resource Name (ARN) that Route 53 assigns to the service when you create it.
--
-- * 'ssName' - The name of the service.
--
-- * 'ssId' - The ID that Route 53 assigned to the service when you created it.
--
-- * 'ssDescription' - The description that you specify when you create the service.
serviceSummary
    :: ServiceSummary
serviceSummary
  = ServiceSummary'{_ssInstanceCount = Nothing,
                    _ssARN = Nothing, _ssName = Nothing, _ssId = Nothing,
                    _ssDescription = Nothing}

-- | The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count.
ssInstanceCount :: Lens' ServiceSummary (Maybe Int)
ssInstanceCount = lens _ssInstanceCount (\ s a -> s{_ssInstanceCount = a})

-- | The Amazon Resource Name (ARN) that Route 53 assigns to the service when you create it.
ssARN :: Lens' ServiceSummary (Maybe Text)
ssARN = lens _ssARN (\ s a -> s{_ssARN = a})

-- | The name of the service.
ssName :: Lens' ServiceSummary (Maybe Text)
ssName = lens _ssName (\ s a -> s{_ssName = a})

-- | The ID that Route 53 assigned to the service when you created it.
ssId :: Lens' ServiceSummary (Maybe Text)
ssId = lens _ssId (\ s a -> s{_ssId = a})

-- | The description that you specify when you create the service.
ssDescription :: Lens' ServiceSummary (Maybe Text)
ssDescription = lens _ssDescription (\ s a -> s{_ssDescription = a})

instance FromJSON ServiceSummary where
        parseJSON
          = withObject "ServiceSummary"
              (\ x ->
                 ServiceSummary' <$>
                   (x .:? "InstanceCount") <*> (x .:? "Arn") <*>
                     (x .:? "Name")
                     <*> (x .:? "Id")
                     <*> (x .:? "Description"))

instance Hashable ServiceSummary where

instance NFData ServiceSummary where
