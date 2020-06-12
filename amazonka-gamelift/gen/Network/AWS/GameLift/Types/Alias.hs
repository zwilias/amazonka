{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.Alias
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GameLift.Types.Alias where

import Network.AWS.GameLift.Types.RoutingStrategy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Properties describing a fleet alias.
--
--
-- Alias-related operations include:
--
--     * 'CreateAlias' 
--
--     * 'ListAliases' 
--
--     * 'DescribeAlias' 
--
--     * 'UpdateAlias' 
--
--     * 'DeleteAlias' 
--
--     * 'ResolveAlias' 
--
--
--
--
-- /See:/ 'alias' smart constructor.
data Alias = Alias'{_aCreationTime :: !(Maybe POSIX),
                    _aLastUpdatedTime :: !(Maybe POSIX),
                    _aAliasId :: !(Maybe Text),
                    _aRoutingStrategy :: !(Maybe RoutingStrategy),
                    _aName :: !(Maybe Text), _aAliasARN :: !(Maybe Text),
                    _aDescription :: !(Maybe Text)}
               deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Alias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aCreationTime' - Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'aLastUpdatedTime' - Time stamp indicating when this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
--
-- * 'aAliasId' - Unique identifier for an alias; alias IDs are unique within a region.
--
-- * 'aRoutingStrategy' - Alias configuration for the alias, including routing type and settings.
--
-- * 'aName' - Descriptive label that is associated with an alias. Alias names do not need to be unique.
--
-- * 'aAliasARN' - Unique identifier for an alias; alias ARNs are unique across all regions.
--
-- * 'aDescription' - Human-readable description of an alias.
alias
    :: Alias
alias
  = Alias'{_aCreationTime = Nothing,
           _aLastUpdatedTime = Nothing, _aAliasId = Nothing,
           _aRoutingStrategy = Nothing, _aName = Nothing,
           _aAliasARN = Nothing, _aDescription = Nothing}

-- | Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
aCreationTime :: Lens' Alias (Maybe UTCTime)
aCreationTime = lens _aCreationTime (\ s a -> s{_aCreationTime = a}) . mapping _Time

-- | Time stamp indicating when this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
aLastUpdatedTime :: Lens' Alias (Maybe UTCTime)
aLastUpdatedTime = lens _aLastUpdatedTime (\ s a -> s{_aLastUpdatedTime = a}) . mapping _Time

-- | Unique identifier for an alias; alias IDs are unique within a region.
aAliasId :: Lens' Alias (Maybe Text)
aAliasId = lens _aAliasId (\ s a -> s{_aAliasId = a})

-- | Alias configuration for the alias, including routing type and settings.
aRoutingStrategy :: Lens' Alias (Maybe RoutingStrategy)
aRoutingStrategy = lens _aRoutingStrategy (\ s a -> s{_aRoutingStrategy = a})

-- | Descriptive label that is associated with an alias. Alias names do not need to be unique.
aName :: Lens' Alias (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Unique identifier for an alias; alias ARNs are unique across all regions.
aAliasARN :: Lens' Alias (Maybe Text)
aAliasARN = lens _aAliasARN (\ s a -> s{_aAliasARN = a})

-- | Human-readable description of an alias.
aDescription :: Lens' Alias (Maybe Text)
aDescription = lens _aDescription (\ s a -> s{_aDescription = a})

instance FromJSON Alias where
        parseJSON
          = withObject "Alias"
              (\ x ->
                 Alias' <$>
                   (x .:? "CreationTime") <*> (x .:? "LastUpdatedTime")
                     <*> (x .:? "AliasId")
                     <*> (x .:? "RoutingStrategy")
                     <*> (x .:? "Name")
                     <*> (x .:? "AliasArn")
                     <*> (x .:? "Description"))

instance Hashable Alias where

instance NFData Alias where
