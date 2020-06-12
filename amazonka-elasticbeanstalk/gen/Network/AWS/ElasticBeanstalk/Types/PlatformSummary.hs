{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.PlatformSummary
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ElasticBeanstalk.Types.PlatformSummary where

import Network.AWS.ElasticBeanstalk.Types.PlatformStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Detailed information about a platform.
--
--
--
-- /See:/ 'platformSummary' smart constructor.
data PlatformSummary = PlatformSummary'{_psSupportedAddonList
                                        :: !(Maybe [Text]),
                                        _psPlatformCategory :: !(Maybe Text),
                                        _psPlatformStatus ::
                                        !(Maybe PlatformStatus),
                                        _psPlatformOwner :: !(Maybe Text),
                                        _psOperatingSystemName :: !(Maybe Text),
                                        _psPlatformARN :: !(Maybe Text),
                                        _psOperatingSystemVersion ::
                                        !(Maybe Text),
                                        _psSupportedTierList :: !(Maybe [Text])}
                         deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlatformSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psSupportedAddonList' - The additions associated with the platform.
--
-- * 'psPlatformCategory' - The category of platform.
--
-- * 'psPlatformStatus' - The status of the platform. You can create an environment from the platform once it is ready.
--
-- * 'psPlatformOwner' - The AWS account ID of the person who created the platform.
--
-- * 'psOperatingSystemName' - The operating system used by the platform.
--
-- * 'psPlatformARN' - The ARN of the platform.
--
-- * 'psOperatingSystemVersion' - The version of the operating system used by the platform.
--
-- * 'psSupportedTierList' - The tiers in which the platform runs.
platformSummary
    :: PlatformSummary
platformSummary
  = PlatformSummary'{_psSupportedAddonList = Nothing,
                     _psPlatformCategory = Nothing,
                     _psPlatformStatus = Nothing,
                     _psPlatformOwner = Nothing,
                     _psOperatingSystemName = Nothing,
                     _psPlatformARN = Nothing,
                     _psOperatingSystemVersion = Nothing,
                     _psSupportedTierList = Nothing}

-- | The additions associated with the platform.
psSupportedAddonList :: Lens' PlatformSummary [Text]
psSupportedAddonList = lens _psSupportedAddonList (\ s a -> s{_psSupportedAddonList = a}) . _Default . _Coerce

-- | The category of platform.
psPlatformCategory :: Lens' PlatformSummary (Maybe Text)
psPlatformCategory = lens _psPlatformCategory (\ s a -> s{_psPlatformCategory = a})

-- | The status of the platform. You can create an environment from the platform once it is ready.
psPlatformStatus :: Lens' PlatformSummary (Maybe PlatformStatus)
psPlatformStatus = lens _psPlatformStatus (\ s a -> s{_psPlatformStatus = a})

-- | The AWS account ID of the person who created the platform.
psPlatformOwner :: Lens' PlatformSummary (Maybe Text)
psPlatformOwner = lens _psPlatformOwner (\ s a -> s{_psPlatformOwner = a})

-- | The operating system used by the platform.
psOperatingSystemName :: Lens' PlatformSummary (Maybe Text)
psOperatingSystemName = lens _psOperatingSystemName (\ s a -> s{_psOperatingSystemName = a})

-- | The ARN of the platform.
psPlatformARN :: Lens' PlatformSummary (Maybe Text)
psPlatformARN = lens _psPlatformARN (\ s a -> s{_psPlatformARN = a})

-- | The version of the operating system used by the platform.
psOperatingSystemVersion :: Lens' PlatformSummary (Maybe Text)
psOperatingSystemVersion = lens _psOperatingSystemVersion (\ s a -> s{_psOperatingSystemVersion = a})

-- | The tiers in which the platform runs.
psSupportedTierList :: Lens' PlatformSummary [Text]
psSupportedTierList = lens _psSupportedTierList (\ s a -> s{_psSupportedTierList = a}) . _Default . _Coerce

instance FromXML PlatformSummary where
        parseXML x
          = PlatformSummary' <$>
              (x .@? "SupportedAddonList" .!@ mempty >>=
                 may (parseXMLList "member"))
                <*> (x .@? "PlatformCategory")
                <*> (x .@? "PlatformStatus")
                <*> (x .@? "PlatformOwner")
                <*> (x .@? "OperatingSystemName")
                <*> (x .@? "PlatformArn")
                <*> (x .@? "OperatingSystemVersion")
                <*>
                (x .@? "SupportedTierList" .!@ mempty >>=
                   may (parseXMLList "member"))

instance Hashable PlatformSummary where

instance NFData PlatformSummary where
