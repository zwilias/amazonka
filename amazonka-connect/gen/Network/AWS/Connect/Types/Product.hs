{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Connect.Types.Product where

import Network.AWS.Connect.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A chat message.
--
--
--
-- /See:/ 'chatMessage' smart constructor.
data ChatMessage =
  ChatMessage'
    { _cmContentType :: !Text
    , _cmContent     :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChatMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmContentType' - The type of the content. Supported types are text/plain.
--
-- * 'cmContent' - The content of the chat message.
chatMessage
    :: Text -- ^ 'cmContentType'
    -> Text -- ^ 'cmContent'
    -> ChatMessage
chatMessage pContentType_ pContent_ =
  ChatMessage' {_cmContentType = pContentType_, _cmContent = pContent_}


-- | The type of the content. Supported types are text/plain.
cmContentType :: Lens' ChatMessage Text
cmContentType = lens _cmContentType (\ s a -> s{_cmContentType = a})

-- | The content of the chat message.
cmContent :: Lens' ChatMessage Text
cmContent = lens _cmContent (\ s a -> s{_cmContent = a})

instance Hashable ChatMessage where

instance NFData ChatMessage where

instance ToJSON ChatMessage where
        toJSON ChatMessage'{..}
          = object
              (catMaybes
                 [Just ("ContentType" .= _cmContentType),
                  Just ("Content" .= _cmContent)])

-- | Contains summary information about a contact flow.
--
--
--
-- /See:/ 'contactFlowSummary' smart constructor.
data ContactFlowSummary =
  ContactFlowSummary'
    { _cfsARN             :: !(Maybe Text)
    , _cfsName            :: !(Maybe Text)
    , _cfsContactFlowType :: !(Maybe ContactFlowType)
    , _cfsId              :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactFlowSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfsARN' - The Amazon Resource Name (ARN) of the contact flow.
--
-- * 'cfsName' - The name of the contact flow.
--
-- * 'cfsContactFlowType' - The type of contact flow.
--
-- * 'cfsId' - The identifier of the contact flow.
contactFlowSummary
    :: ContactFlowSummary
contactFlowSummary =
  ContactFlowSummary'
    { _cfsARN = Nothing
    , _cfsName = Nothing
    , _cfsContactFlowType = Nothing
    , _cfsId = Nothing
    }


-- | The Amazon Resource Name (ARN) of the contact flow.
cfsARN :: Lens' ContactFlowSummary (Maybe Text)
cfsARN = lens _cfsARN (\ s a -> s{_cfsARN = a})

-- | The name of the contact flow.
cfsName :: Lens' ContactFlowSummary (Maybe Text)
cfsName = lens _cfsName (\ s a -> s{_cfsName = a})

-- | The type of contact flow.
cfsContactFlowType :: Lens' ContactFlowSummary (Maybe ContactFlowType)
cfsContactFlowType = lens _cfsContactFlowType (\ s a -> s{_cfsContactFlowType = a})

-- | The identifier of the contact flow.
cfsId :: Lens' ContactFlowSummary (Maybe Text)
cfsId = lens _cfsId (\ s a -> s{_cfsId = a})

instance FromJSON ContactFlowSummary where
        parseJSON
          = withObject "ContactFlowSummary"
              (\ x ->
                 ContactFlowSummary' <$>
                   (x .:? "Arn") <*> (x .:? "Name") <*>
                     (x .:? "ContactFlowType")
                     <*> (x .:? "Id"))

instance Hashable ContactFlowSummary where

instance NFData ContactFlowSummary where

-- | Contains credentials to use for federation.
--
--
--
-- /See:/ 'credentials' smart constructor.
data Credentials =
  Credentials'
    { _cAccessTokenExpiration  :: !(Maybe POSIX)
    , _cAccessToken            :: !(Maybe (Sensitive Text))
    , _cRefreshToken           :: !(Maybe (Sensitive Text))
    , _cRefreshTokenExpiration :: !(Maybe POSIX)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Credentials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cAccessTokenExpiration' - A token generated with an expiration time for the session a user is logged in to Amazon Connect.
--
-- * 'cAccessToken' - An access token generated for a federated user to access Amazon Connect.
--
-- * 'cRefreshToken' - Renews a token generated for a user to access the Amazon Connect instance.
--
-- * 'cRefreshTokenExpiration' - Renews the expiration timer for a generated token.
credentials
    :: Credentials
credentials =
  Credentials'
    { _cAccessTokenExpiration = Nothing
    , _cAccessToken = Nothing
    , _cRefreshToken = Nothing
    , _cRefreshTokenExpiration = Nothing
    }


-- | A token generated with an expiration time for the session a user is logged in to Amazon Connect.
cAccessTokenExpiration :: Lens' Credentials (Maybe UTCTime)
cAccessTokenExpiration = lens _cAccessTokenExpiration (\ s a -> s{_cAccessTokenExpiration = a}) . mapping _Time

-- | An access token generated for a federated user to access Amazon Connect.
cAccessToken :: Lens' Credentials (Maybe Text)
cAccessToken = lens _cAccessToken (\ s a -> s{_cAccessToken = a}) . mapping _Sensitive

-- | Renews a token generated for a user to access the Amazon Connect instance.
cRefreshToken :: Lens' Credentials (Maybe Text)
cRefreshToken = lens _cRefreshToken (\ s a -> s{_cRefreshToken = a}) . mapping _Sensitive

-- | Renews the expiration timer for a generated token.
cRefreshTokenExpiration :: Lens' Credentials (Maybe UTCTime)
cRefreshTokenExpiration = lens _cRefreshTokenExpiration (\ s a -> s{_cRefreshTokenExpiration = a}) . mapping _Time

instance FromJSON Credentials where
        parseJSON
          = withObject "Credentials"
              (\ x ->
                 Credentials' <$>
                   (x .:? "AccessTokenExpiration") <*>
                     (x .:? "AccessToken")
                     <*> (x .:? "RefreshToken")
                     <*> (x .:? "RefreshTokenExpiration"))

instance Hashable Credentials where

instance NFData Credentials where

-- | Contains information about a real-time metric.
--
--
--
-- /See:/ 'currentMetric' smart constructor.
data CurrentMetric =
  CurrentMetric'
    { _cmName :: !(Maybe CurrentMetricName)
    , _cmUnit :: !(Maybe Unit)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CurrentMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmName' - The name of the metric.
--
-- * 'cmUnit' - The unit for the metric.
currentMetric
    :: CurrentMetric
currentMetric = CurrentMetric' {_cmName = Nothing, _cmUnit = Nothing}


-- | The name of the metric.
cmName :: Lens' CurrentMetric (Maybe CurrentMetricName)
cmName = lens _cmName (\ s a -> s{_cmName = a})

-- | The unit for the metric.
cmUnit :: Lens' CurrentMetric (Maybe Unit)
cmUnit = lens _cmUnit (\ s a -> s{_cmUnit = a})

instance FromJSON CurrentMetric where
        parseJSON
          = withObject "CurrentMetric"
              (\ x ->
                 CurrentMetric' <$> (x .:? "Name") <*> (x .:? "Unit"))

instance Hashable CurrentMetric where

instance NFData CurrentMetric where

instance ToJSON CurrentMetric where
        toJSON CurrentMetric'{..}
          = object
              (catMaybes
                 [("Name" .=) <$> _cmName, ("Unit" .=) <$> _cmUnit])

-- | Contains the data for a real-time metric.
--
--
--
-- /See:/ 'currentMetricData' smart constructor.
data CurrentMetricData =
  CurrentMetricData'
    { _cmdValue  :: !(Maybe Double)
    , _cmdMetric :: !(Maybe CurrentMetric)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CurrentMetricData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmdValue' - The value of the metric.
--
-- * 'cmdMetric' - Information about the metric.
currentMetricData
    :: CurrentMetricData
currentMetricData =
  CurrentMetricData' {_cmdValue = Nothing, _cmdMetric = Nothing}


-- | The value of the metric.
cmdValue :: Lens' CurrentMetricData (Maybe Double)
cmdValue = lens _cmdValue (\ s a -> s{_cmdValue = a})

-- | Information about the metric.
cmdMetric :: Lens' CurrentMetricData (Maybe CurrentMetric)
cmdMetric = lens _cmdMetric (\ s a -> s{_cmdMetric = a})

instance FromJSON CurrentMetricData where
        parseJSON
          = withObject "CurrentMetricData"
              (\ x ->
                 CurrentMetricData' <$>
                   (x .:? "Value") <*> (x .:? "Metric"))

instance Hashable CurrentMetricData where

instance NFData CurrentMetricData where

-- | Contains information about a set of real-time metrics.
--
--
--
-- /See:/ 'currentMetricResult' smart constructor.
data CurrentMetricResult =
  CurrentMetricResult'
    { _cmrCollections :: !(Maybe [CurrentMetricData])
    , _cmrDimensions  :: !(Maybe Dimensions)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'CurrentMetricResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmrCollections' - The set of metrics.
--
-- * 'cmrDimensions' - The dimensions for the metrics.
currentMetricResult
    :: CurrentMetricResult
currentMetricResult =
  CurrentMetricResult' {_cmrCollections = Nothing, _cmrDimensions = Nothing}


-- | The set of metrics.
cmrCollections :: Lens' CurrentMetricResult [CurrentMetricData]
cmrCollections = lens _cmrCollections (\ s a -> s{_cmrCollections = a}) . _Default . _Coerce

-- | The dimensions for the metrics.
cmrDimensions :: Lens' CurrentMetricResult (Maybe Dimensions)
cmrDimensions = lens _cmrDimensions (\ s a -> s{_cmrDimensions = a})

instance FromJSON CurrentMetricResult where
        parseJSON
          = withObject "CurrentMetricResult"
              (\ x ->
                 CurrentMetricResult' <$>
                   (x .:? "Collections" .!= mempty) <*>
                     (x .:? "Dimensions"))

instance Hashable CurrentMetricResult where

instance NFData CurrentMetricResult where

-- | Contains information about the dimensions for a set of metrics.
--
--
--
-- /See:/ 'dimensions' smart constructor.
data Dimensions =
  Dimensions'
    { _dChannel :: !(Maybe Channel)
    , _dQueue   :: !(Maybe QueueReference)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Dimensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dChannel' - The channel used for grouping and filters.
--
-- * 'dQueue' - Information about the queue for which metrics are returned.
dimensions
    :: Dimensions
dimensions = Dimensions' {_dChannel = Nothing, _dQueue = Nothing}


-- | The channel used for grouping and filters.
dChannel :: Lens' Dimensions (Maybe Channel)
dChannel = lens _dChannel (\ s a -> s{_dChannel = a})

-- | Information about the queue for which metrics are returned.
dQueue :: Lens' Dimensions (Maybe QueueReference)
dQueue = lens _dQueue (\ s a -> s{_dQueue = a})

instance FromJSON Dimensions where
        parseJSON
          = withObject "Dimensions"
              (\ x ->
                 Dimensions' <$>
                   (x .:? "Channel") <*> (x .:? "Queue"))

instance Hashable Dimensions where

instance NFData Dimensions where

-- | Contains the filter to apply when retrieving metrics.
--
--
--
-- /See:/ 'filters' smart constructor.
data Filters =
  Filters'
    { _fQueues   :: !(Maybe (List1 Text))
    , _fChannels :: !(Maybe [Channel])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Filters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fQueues' - The queues to use to filter the metrics. You can specify up to 100 queues per request.
--
-- * 'fChannels' - The channel to use to filter the metrics.
filters
    :: Filters
filters = Filters' {_fQueues = Nothing, _fChannels = Nothing}


-- | The queues to use to filter the metrics. You can specify up to 100 queues per request.
fQueues :: Lens' Filters (Maybe (NonEmpty Text))
fQueues = lens _fQueues (\ s a -> s{_fQueues = a}) . mapping _List1

-- | The channel to use to filter the metrics.
fChannels :: Lens' Filters [Channel]
fChannels = lens _fChannels (\ s a -> s{_fChannels = a}) . _Default . _Coerce

instance Hashable Filters where

instance NFData Filters where

instance ToJSON Filters where
        toJSON Filters'{..}
          = object
              (catMaybes
                 [("Queues" .=) <$> _fQueues,
                  ("Channels" .=) <$> _fChannels])

-- | Contains information about a hierarchy group.
--
--
--
-- /See:/ 'hierarchyGroup' smart constructor.
data HierarchyGroup =
  HierarchyGroup'
    { _hgARN           :: !(Maybe Text)
    , _hgName          :: !(Maybe Text)
    , _hgHierarchyPath :: !(Maybe HierarchyPath)
    , _hgId            :: !(Maybe Text)
    , _hgLevelId       :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HierarchyGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hgARN' - The Amazon Resource Name (ARN) of the hierarchy group.
--
-- * 'hgName' - The name of the hierarchy group.
--
-- * 'hgHierarchyPath' - Information about the levels in the hierarchy group.
--
-- * 'hgId' - The identifier of the hierarchy group.
--
-- * 'hgLevelId' - The identifier of the level in the hierarchy group.
hierarchyGroup
    :: HierarchyGroup
hierarchyGroup =
  HierarchyGroup'
    { _hgARN = Nothing
    , _hgName = Nothing
    , _hgHierarchyPath = Nothing
    , _hgId = Nothing
    , _hgLevelId = Nothing
    }


-- | The Amazon Resource Name (ARN) of the hierarchy group.
hgARN :: Lens' HierarchyGroup (Maybe Text)
hgARN = lens _hgARN (\ s a -> s{_hgARN = a})

-- | The name of the hierarchy group.
hgName :: Lens' HierarchyGroup (Maybe Text)
hgName = lens _hgName (\ s a -> s{_hgName = a})

-- | Information about the levels in the hierarchy group.
hgHierarchyPath :: Lens' HierarchyGroup (Maybe HierarchyPath)
hgHierarchyPath = lens _hgHierarchyPath (\ s a -> s{_hgHierarchyPath = a})

-- | The identifier of the hierarchy group.
hgId :: Lens' HierarchyGroup (Maybe Text)
hgId = lens _hgId (\ s a -> s{_hgId = a})

-- | The identifier of the level in the hierarchy group.
hgLevelId :: Lens' HierarchyGroup (Maybe Text)
hgLevelId = lens _hgLevelId (\ s a -> s{_hgLevelId = a})

instance FromJSON HierarchyGroup where
        parseJSON
          = withObject "HierarchyGroup"
              (\ x ->
                 HierarchyGroup' <$>
                   (x .:? "Arn") <*> (x .:? "Name") <*>
                     (x .:? "HierarchyPath")
                     <*> (x .:? "Id")
                     <*> (x .:? "LevelId"))

instance Hashable HierarchyGroup where

instance NFData HierarchyGroup where

-- | Contains summary information about a hierarchy group.
--
--
--
-- /See:/ 'hierarchyGroupSummary' smart constructor.
data HierarchyGroupSummary =
  HierarchyGroupSummary'
    { _hgsARN  :: !(Maybe Text)
    , _hgsName :: !(Maybe Text)
    , _hgsId   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HierarchyGroupSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hgsARN' - The Amazon Resource Name (ARN) of the hierarchy group.
--
-- * 'hgsName' - The name of the hierarchy group.
--
-- * 'hgsId' - The identifier of the hierarchy group.
hierarchyGroupSummary
    :: HierarchyGroupSummary
hierarchyGroupSummary =
  HierarchyGroupSummary'
    {_hgsARN = Nothing, _hgsName = Nothing, _hgsId = Nothing}


-- | The Amazon Resource Name (ARN) of the hierarchy group.
hgsARN :: Lens' HierarchyGroupSummary (Maybe Text)
hgsARN = lens _hgsARN (\ s a -> s{_hgsARN = a})

-- | The name of the hierarchy group.
hgsName :: Lens' HierarchyGroupSummary (Maybe Text)
hgsName = lens _hgsName (\ s a -> s{_hgsName = a})

-- | The identifier of the hierarchy group.
hgsId :: Lens' HierarchyGroupSummary (Maybe Text)
hgsId = lens _hgsId (\ s a -> s{_hgsId = a})

instance FromJSON HierarchyGroupSummary where
        parseJSON
          = withObject "HierarchyGroupSummary"
              (\ x ->
                 HierarchyGroupSummary' <$>
                   (x .:? "Arn") <*> (x .:? "Name") <*> (x .:? "Id"))

instance Hashable HierarchyGroupSummary where

instance NFData HierarchyGroupSummary where

-- | Contains information about a hierarchy level.
--
--
--
-- /See:/ 'hierarchyLevel' smart constructor.
data HierarchyLevel =
  HierarchyLevel'
    { _hlARN  :: !(Maybe Text)
    , _hlName :: !(Maybe Text)
    , _hlId   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HierarchyLevel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hlARN' - The Amazon Resource Name (ARN) of the hierarchy level.
--
-- * 'hlName' - The name of the hierarchy level.
--
-- * 'hlId' - The identifier of the hierarchy level.
hierarchyLevel
    :: HierarchyLevel
hierarchyLevel =
  HierarchyLevel' {_hlARN = Nothing, _hlName = Nothing, _hlId = Nothing}


-- | The Amazon Resource Name (ARN) of the hierarchy level.
hlARN :: Lens' HierarchyLevel (Maybe Text)
hlARN = lens _hlARN (\ s a -> s{_hlARN = a})

-- | The name of the hierarchy level.
hlName :: Lens' HierarchyLevel (Maybe Text)
hlName = lens _hlName (\ s a -> s{_hlName = a})

-- | The identifier of the hierarchy level.
hlId :: Lens' HierarchyLevel (Maybe Text)
hlId = lens _hlId (\ s a -> s{_hlId = a})

instance FromJSON HierarchyLevel where
        parseJSON
          = withObject "HierarchyLevel"
              (\ x ->
                 HierarchyLevel' <$>
                   (x .:? "Arn") <*> (x .:? "Name") <*> (x .:? "Id"))

instance Hashable HierarchyLevel where

instance NFData HierarchyLevel where

-- | Contains information about the levels of a hierarchy group.
--
--
--
-- /See:/ 'hierarchyPath' smart constructor.
data HierarchyPath =
  HierarchyPath'
    { _hpLevelFive  :: !(Maybe HierarchyGroupSummary)
    , _hpLevelThree :: !(Maybe HierarchyGroupSummary)
    , _hpLevelFour  :: !(Maybe HierarchyGroupSummary)
    , _hpLevelTwo   :: !(Maybe HierarchyGroupSummary)
    , _hpLevelOne   :: !(Maybe HierarchyGroupSummary)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HierarchyPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hpLevelFive' - Information about level five.
--
-- * 'hpLevelThree' - Information about level three.
--
-- * 'hpLevelFour' - Information about level four.
--
-- * 'hpLevelTwo' - Information about level two.
--
-- * 'hpLevelOne' - Information about level one.
hierarchyPath
    :: HierarchyPath
hierarchyPath =
  HierarchyPath'
    { _hpLevelFive = Nothing
    , _hpLevelThree = Nothing
    , _hpLevelFour = Nothing
    , _hpLevelTwo = Nothing
    , _hpLevelOne = Nothing
    }


-- | Information about level five.
hpLevelFive :: Lens' HierarchyPath (Maybe HierarchyGroupSummary)
hpLevelFive = lens _hpLevelFive (\ s a -> s{_hpLevelFive = a})

-- | Information about level three.
hpLevelThree :: Lens' HierarchyPath (Maybe HierarchyGroupSummary)
hpLevelThree = lens _hpLevelThree (\ s a -> s{_hpLevelThree = a})

-- | Information about level four.
hpLevelFour :: Lens' HierarchyPath (Maybe HierarchyGroupSummary)
hpLevelFour = lens _hpLevelFour (\ s a -> s{_hpLevelFour = a})

-- | Information about level two.
hpLevelTwo :: Lens' HierarchyPath (Maybe HierarchyGroupSummary)
hpLevelTwo = lens _hpLevelTwo (\ s a -> s{_hpLevelTwo = a})

-- | Information about level one.
hpLevelOne :: Lens' HierarchyPath (Maybe HierarchyGroupSummary)
hpLevelOne = lens _hpLevelOne (\ s a -> s{_hpLevelOne = a})

instance FromJSON HierarchyPath where
        parseJSON
          = withObject "HierarchyPath"
              (\ x ->
                 HierarchyPath' <$>
                   (x .:? "LevelFive") <*> (x .:? "LevelThree") <*>
                     (x .:? "LevelFour")
                     <*> (x .:? "LevelTwo")
                     <*> (x .:? "LevelOne"))

instance Hashable HierarchyPath where

instance NFData HierarchyPath where

-- | Contains information about a hierarchy structure.
--
--
--
-- /See:/ 'hierarchyStructure' smart constructor.
data HierarchyStructure =
  HierarchyStructure'
    { _hsLevelFive  :: !(Maybe HierarchyLevel)
    , _hsLevelThree :: !(Maybe HierarchyLevel)
    , _hsLevelFour  :: !(Maybe HierarchyLevel)
    , _hsLevelTwo   :: !(Maybe HierarchyLevel)
    , _hsLevelOne   :: !(Maybe HierarchyLevel)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HierarchyStructure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsLevelFive' - Information about level five.
--
-- * 'hsLevelThree' - Information about level three.
--
-- * 'hsLevelFour' - Information about level four.
--
-- * 'hsLevelTwo' - Information about level two.
--
-- * 'hsLevelOne' - Information about level one.
hierarchyStructure
    :: HierarchyStructure
hierarchyStructure =
  HierarchyStructure'
    { _hsLevelFive = Nothing
    , _hsLevelThree = Nothing
    , _hsLevelFour = Nothing
    , _hsLevelTwo = Nothing
    , _hsLevelOne = Nothing
    }


-- | Information about level five.
hsLevelFive :: Lens' HierarchyStructure (Maybe HierarchyLevel)
hsLevelFive = lens _hsLevelFive (\ s a -> s{_hsLevelFive = a})

-- | Information about level three.
hsLevelThree :: Lens' HierarchyStructure (Maybe HierarchyLevel)
hsLevelThree = lens _hsLevelThree (\ s a -> s{_hsLevelThree = a})

-- | Information about level four.
hsLevelFour :: Lens' HierarchyStructure (Maybe HierarchyLevel)
hsLevelFour = lens _hsLevelFour (\ s a -> s{_hsLevelFour = a})

-- | Information about level two.
hsLevelTwo :: Lens' HierarchyStructure (Maybe HierarchyLevel)
hsLevelTwo = lens _hsLevelTwo (\ s a -> s{_hsLevelTwo = a})

-- | Information about level one.
hsLevelOne :: Lens' HierarchyStructure (Maybe HierarchyLevel)
hsLevelOne = lens _hsLevelOne (\ s a -> s{_hsLevelOne = a})

instance FromJSON HierarchyStructure where
        parseJSON
          = withObject "HierarchyStructure"
              (\ x ->
                 HierarchyStructure' <$>
                   (x .:? "LevelFive") <*> (x .:? "LevelThree") <*>
                     (x .:? "LevelFour")
                     <*> (x .:? "LevelTwo")
                     <*> (x .:? "LevelOne"))

instance Hashable HierarchyStructure where

instance NFData HierarchyStructure where

-- | Contains information about a historical metric.
--
--
--
-- /See:/ 'historicalMetric' smart constructor.
data HistoricalMetric =
  HistoricalMetric'
    { _hmName      :: !(Maybe HistoricalMetricName)
    , _hmThreshold :: !(Maybe Threshold)
    , _hmUnit      :: !(Maybe Unit)
    , _hmStatistic :: !(Maybe Statistic)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistoricalMetric' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmName' - The name of the metric.
--
-- * 'hmThreshold' - The threshold for the metric, used with service level metrics.
--
-- * 'hmUnit' - The unit for the metric.
--
-- * 'hmStatistic' - The statistic for the metric.
historicalMetric
    :: HistoricalMetric
historicalMetric =
  HistoricalMetric'
    { _hmName = Nothing
    , _hmThreshold = Nothing
    , _hmUnit = Nothing
    , _hmStatistic = Nothing
    }


-- | The name of the metric.
hmName :: Lens' HistoricalMetric (Maybe HistoricalMetricName)
hmName = lens _hmName (\ s a -> s{_hmName = a})

-- | The threshold for the metric, used with service level metrics.
hmThreshold :: Lens' HistoricalMetric (Maybe Threshold)
hmThreshold = lens _hmThreshold (\ s a -> s{_hmThreshold = a})

-- | The unit for the metric.
hmUnit :: Lens' HistoricalMetric (Maybe Unit)
hmUnit = lens _hmUnit (\ s a -> s{_hmUnit = a})

-- | The statistic for the metric.
hmStatistic :: Lens' HistoricalMetric (Maybe Statistic)
hmStatistic = lens _hmStatistic (\ s a -> s{_hmStatistic = a})

instance FromJSON HistoricalMetric where
        parseJSON
          = withObject "HistoricalMetric"
              (\ x ->
                 HistoricalMetric' <$>
                   (x .:? "Name") <*> (x .:? "Threshold") <*>
                     (x .:? "Unit")
                     <*> (x .:? "Statistic"))

instance Hashable HistoricalMetric where

instance NFData HistoricalMetric where

instance ToJSON HistoricalMetric where
        toJSON HistoricalMetric'{..}
          = object
              (catMaybes
                 [("Name" .=) <$> _hmName,
                  ("Threshold" .=) <$> _hmThreshold,
                  ("Unit" .=) <$> _hmUnit,
                  ("Statistic" .=) <$> _hmStatistic])

-- | Contains the data for a historical metric.
--
--
--
-- /See:/ 'historicalMetricData' smart constructor.
data HistoricalMetricData =
  HistoricalMetricData'
    { _hmdValue  :: !(Maybe Double)
    , _hmdMetric :: !(Maybe HistoricalMetric)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistoricalMetricData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmdValue' - The value of the metric.
--
-- * 'hmdMetric' - Information about the metric.
historicalMetricData
    :: HistoricalMetricData
historicalMetricData =
  HistoricalMetricData' {_hmdValue = Nothing, _hmdMetric = Nothing}


-- | The value of the metric.
hmdValue :: Lens' HistoricalMetricData (Maybe Double)
hmdValue = lens _hmdValue (\ s a -> s{_hmdValue = a})

-- | Information about the metric.
hmdMetric :: Lens' HistoricalMetricData (Maybe HistoricalMetric)
hmdMetric = lens _hmdMetric (\ s a -> s{_hmdMetric = a})

instance FromJSON HistoricalMetricData where
        parseJSON
          = withObject "HistoricalMetricData"
              (\ x ->
                 HistoricalMetricData' <$>
                   (x .:? "Value") <*> (x .:? "Metric"))

instance Hashable HistoricalMetricData where

instance NFData HistoricalMetricData where

-- | Contains information about the historical metrics retrieved.
--
--
--
-- /See:/ 'historicalMetricResult' smart constructor.
data HistoricalMetricResult =
  HistoricalMetricResult'
    { _hmrCollections :: !(Maybe [HistoricalMetricData])
    , _hmrDimensions  :: !(Maybe Dimensions)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistoricalMetricResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmrCollections' - The set of metrics.
--
-- * 'hmrDimensions' - The dimension for the metrics.
historicalMetricResult
    :: HistoricalMetricResult
historicalMetricResult =
  HistoricalMetricResult' {_hmrCollections = Nothing, _hmrDimensions = Nothing}


-- | The set of metrics.
hmrCollections :: Lens' HistoricalMetricResult [HistoricalMetricData]
hmrCollections = lens _hmrCollections (\ s a -> s{_hmrCollections = a}) . _Default . _Coerce

-- | The dimension for the metrics.
hmrDimensions :: Lens' HistoricalMetricResult (Maybe Dimensions)
hmrDimensions = lens _hmrDimensions (\ s a -> s{_hmrDimensions = a})

instance FromJSON HistoricalMetricResult where
        parseJSON
          = withObject "HistoricalMetricResult"
              (\ x ->
                 HistoricalMetricResult' <$>
                   (x .:? "Collections" .!= mempty) <*>
                     (x .:? "Dimensions"))

instance Hashable HistoricalMetricResult where

instance NFData HistoricalMetricResult where

-- | Contains summary information about hours of operation for a contact center.
--
--
--
-- /See:/ 'hoursOfOperationSummary' smart constructor.
data HoursOfOperationSummary =
  HoursOfOperationSummary'
    { _hoosARN  :: !(Maybe Text)
    , _hoosName :: !(Maybe Text)
    , _hoosId   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'HoursOfOperationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hoosARN' - The Amazon Resource Name (ARN) of the hours of operation.
--
-- * 'hoosName' - The name of the hours of operation.
--
-- * 'hoosId' - The identifier of the hours of operation.
hoursOfOperationSummary
    :: HoursOfOperationSummary
hoursOfOperationSummary =
  HoursOfOperationSummary'
    {_hoosARN = Nothing, _hoosName = Nothing, _hoosId = Nothing}


-- | The Amazon Resource Name (ARN) of the hours of operation.
hoosARN :: Lens' HoursOfOperationSummary (Maybe Text)
hoosARN = lens _hoosARN (\ s a -> s{_hoosARN = a})

-- | The name of the hours of operation.
hoosName :: Lens' HoursOfOperationSummary (Maybe Text)
hoosName = lens _hoosName (\ s a -> s{_hoosName = a})

-- | The identifier of the hours of operation.
hoosId :: Lens' HoursOfOperationSummary (Maybe Text)
hoosId = lens _hoosId (\ s a -> s{_hoosId = a})

instance FromJSON HoursOfOperationSummary where
        parseJSON
          = withObject "HoursOfOperationSummary"
              (\ x ->
                 HoursOfOperationSummary' <$>
                   (x .:? "Arn") <*> (x .:? "Name") <*> (x .:? "Id"))

instance Hashable HoursOfOperationSummary where

instance NFData HoursOfOperationSummary where

-- | The customer's details.
--
--
--
-- /See:/ 'participantDetails' smart constructor.
newtype ParticipantDetails =
  ParticipantDetails'
    { _pdDisplayName :: Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ParticipantDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdDisplayName' - Display name of the participant.
participantDetails
    :: Text -- ^ 'pdDisplayName'
    -> ParticipantDetails
participantDetails pDisplayName_ =
  ParticipantDetails' {_pdDisplayName = pDisplayName_}


-- | Display name of the participant.
pdDisplayName :: Lens' ParticipantDetails Text
pdDisplayName = lens _pdDisplayName (\ s a -> s{_pdDisplayName = a})

instance Hashable ParticipantDetails where

instance NFData ParticipantDetails where

instance ToJSON ParticipantDetails where
        toJSON ParticipantDetails'{..}
          = object
              (catMaybes [Just ("DisplayName" .= _pdDisplayName)])

-- | Contains summary information about a phone number for a contact center.
--
--
--
-- /See:/ 'phoneNumberSummary' smart constructor.
data PhoneNumberSummary =
  PhoneNumberSummary'
    { _pnsPhoneNumberType        :: !(Maybe PhoneNumberType)
    , _pnsARN                    :: !(Maybe Text)
    , _pnsPhoneNumber            :: !(Maybe Text)
    , _pnsPhoneNumberCountryCode :: !(Maybe PhoneNumberCountryCode)
    , _pnsId                     :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhoneNumberSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsPhoneNumberType' - The type of phone number.
--
-- * 'pnsARN' - The Amazon Resource Name (ARN) of the phone number.
--
-- * 'pnsPhoneNumber' - The phone number.
--
-- * 'pnsPhoneNumberCountryCode' - The ISO country code.
--
-- * 'pnsId' - The identifier of the phone number.
phoneNumberSummary
    :: PhoneNumberSummary
phoneNumberSummary =
  PhoneNumberSummary'
    { _pnsPhoneNumberType = Nothing
    , _pnsARN = Nothing
    , _pnsPhoneNumber = Nothing
    , _pnsPhoneNumberCountryCode = Nothing
    , _pnsId = Nothing
    }


-- | The type of phone number.
pnsPhoneNumberType :: Lens' PhoneNumberSummary (Maybe PhoneNumberType)
pnsPhoneNumberType = lens _pnsPhoneNumberType (\ s a -> s{_pnsPhoneNumberType = a})

-- | The Amazon Resource Name (ARN) of the phone number.
pnsARN :: Lens' PhoneNumberSummary (Maybe Text)
pnsARN = lens _pnsARN (\ s a -> s{_pnsARN = a})

-- | The phone number.
pnsPhoneNumber :: Lens' PhoneNumberSummary (Maybe Text)
pnsPhoneNumber = lens _pnsPhoneNumber (\ s a -> s{_pnsPhoneNumber = a})

-- | The ISO country code.
pnsPhoneNumberCountryCode :: Lens' PhoneNumberSummary (Maybe PhoneNumberCountryCode)
pnsPhoneNumberCountryCode = lens _pnsPhoneNumberCountryCode (\ s a -> s{_pnsPhoneNumberCountryCode = a})

-- | The identifier of the phone number.
pnsId :: Lens' PhoneNumberSummary (Maybe Text)
pnsId = lens _pnsId (\ s a -> s{_pnsId = a})

instance FromJSON PhoneNumberSummary where
        parseJSON
          = withObject "PhoneNumberSummary"
              (\ x ->
                 PhoneNumberSummary' <$>
                   (x .:? "PhoneNumberType") <*> (x .:? "Arn") <*>
                     (x .:? "PhoneNumber")
                     <*> (x .:? "PhoneNumberCountryCode")
                     <*> (x .:? "Id"))

instance Hashable PhoneNumberSummary where

instance NFData PhoneNumberSummary where

-- | Contains information about a queue resource for which metrics are returned.
--
--
--
-- /See:/ 'queueReference' smart constructor.
data QueueReference =
  QueueReference'
    { _qrARN :: !(Maybe Text)
    , _qrId  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueueReference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrARN' - The Amazon Resource Name (ARN) of the queue.
--
-- * 'qrId' - The identifier of the queue.
queueReference
    :: QueueReference
queueReference = QueueReference' {_qrARN = Nothing, _qrId = Nothing}


-- | The Amazon Resource Name (ARN) of the queue.
qrARN :: Lens' QueueReference (Maybe Text)
qrARN = lens _qrARN (\ s a -> s{_qrARN = a})

-- | The identifier of the queue.
qrId :: Lens' QueueReference (Maybe Text)
qrId = lens _qrId (\ s a -> s{_qrId = a})

instance FromJSON QueueReference where
        parseJSON
          = withObject "QueueReference"
              (\ x ->
                 QueueReference' <$> (x .:? "Arn") <*> (x .:? "Id"))

instance Hashable QueueReference where

instance NFData QueueReference where

-- | Contains summary information about a queue.
--
--
--
-- /See:/ 'queueSummary' smart constructor.
data QueueSummary =
  QueueSummary'
    { _qsARN       :: !(Maybe Text)
    , _qsName      :: !(Maybe Text)
    , _qsId        :: !(Maybe Text)
    , _qsQueueType :: !(Maybe QueueType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'QueueSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsARN' - The Amazon Resource Name (ARN) of the queue.
--
-- * 'qsName' - The name of the queue.
--
-- * 'qsId' - The identifier of the queue.
--
-- * 'qsQueueType' - The type of queue.
queueSummary
    :: QueueSummary
queueSummary =
  QueueSummary'
    { _qsARN = Nothing
    , _qsName = Nothing
    , _qsId = Nothing
    , _qsQueueType = Nothing
    }


-- | The Amazon Resource Name (ARN) of the queue.
qsARN :: Lens' QueueSummary (Maybe Text)
qsARN = lens _qsARN (\ s a -> s{_qsARN = a})

-- | The name of the queue.
qsName :: Lens' QueueSummary (Maybe Text)
qsName = lens _qsName (\ s a -> s{_qsName = a})

-- | The identifier of the queue.
qsId :: Lens' QueueSummary (Maybe Text)
qsId = lens _qsId (\ s a -> s{_qsId = a})

-- | The type of queue.
qsQueueType :: Lens' QueueSummary (Maybe QueueType)
qsQueueType = lens _qsQueueType (\ s a -> s{_qsQueueType = a})

instance FromJSON QueueSummary where
        parseJSON
          = withObject "QueueSummary"
              (\ x ->
                 QueueSummary' <$>
                   (x .:? "Arn") <*> (x .:? "Name") <*> (x .:? "Id") <*>
                     (x .:? "QueueType"))

instance Hashable QueueSummary where

instance NFData QueueSummary where

-- | Contains summary information about a routing profile.
--
--
--
-- /See:/ 'routingProfileSummary' smart constructor.
data RoutingProfileSummary =
  RoutingProfileSummary'
    { _rpsARN  :: !(Maybe Text)
    , _rpsName :: !(Maybe Text)
    , _rpsId   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutingProfileSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpsARN' - The Amazon Resource Name (ARN) of the routing profile.
--
-- * 'rpsName' - The name of the routing profile.
--
-- * 'rpsId' - The identifier of the routing profile.
routingProfileSummary
    :: RoutingProfileSummary
routingProfileSummary =
  RoutingProfileSummary'
    {_rpsARN = Nothing, _rpsName = Nothing, _rpsId = Nothing}


-- | The Amazon Resource Name (ARN) of the routing profile.
rpsARN :: Lens' RoutingProfileSummary (Maybe Text)
rpsARN = lens _rpsARN (\ s a -> s{_rpsARN = a})

-- | The name of the routing profile.
rpsName :: Lens' RoutingProfileSummary (Maybe Text)
rpsName = lens _rpsName (\ s a -> s{_rpsName = a})

-- | The identifier of the routing profile.
rpsId :: Lens' RoutingProfileSummary (Maybe Text)
rpsId = lens _rpsId (\ s a -> s{_rpsId = a})

instance FromJSON RoutingProfileSummary where
        parseJSON
          = withObject "RoutingProfileSummary"
              (\ x ->
                 RoutingProfileSummary' <$>
                   (x .:? "Arn") <*> (x .:? "Name") <*> (x .:? "Id"))

instance Hashable RoutingProfileSummary where

instance NFData RoutingProfileSummary where

-- | Contains information about a security profile.
--
--
--
-- /See:/ 'securityProfileSummary' smart constructor.
data SecurityProfileSummary =
  SecurityProfileSummary'
    { _spsARN  :: !(Maybe Text)
    , _spsName :: !(Maybe Text)
    , _spsId   :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityProfileSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spsARN' - The Amazon Resource Name (ARN) of the security profile.
--
-- * 'spsName' - The name of the security profile.
--
-- * 'spsId' - The identifier of the security profile.
securityProfileSummary
    :: SecurityProfileSummary
securityProfileSummary =
  SecurityProfileSummary'
    {_spsARN = Nothing, _spsName = Nothing, _spsId = Nothing}


-- | The Amazon Resource Name (ARN) of the security profile.
spsARN :: Lens' SecurityProfileSummary (Maybe Text)
spsARN = lens _spsARN (\ s a -> s{_spsARN = a})

-- | The name of the security profile.
spsName :: Lens' SecurityProfileSummary (Maybe Text)
spsName = lens _spsName (\ s a -> s{_spsName = a})

-- | The identifier of the security profile.
spsId :: Lens' SecurityProfileSummary (Maybe Text)
spsId = lens _spsId (\ s a -> s{_spsId = a})

instance FromJSON SecurityProfileSummary where
        parseJSON
          = withObject "SecurityProfileSummary"
              (\ x ->
                 SecurityProfileSummary' <$>
                   (x .:? "Arn") <*> (x .:? "Name") <*> (x .:? "Id"))

instance Hashable SecurityProfileSummary where

instance NFData SecurityProfileSummary where

-- | Contains information about the threshold for service level metrics.
--
--
--
-- /See:/ 'threshold' smart constructor.
data Threshold =
  Threshold'
    { _tThresholdValue :: !(Maybe Double)
    , _tComparison     :: !(Maybe Comparison)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Threshold' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tThresholdValue' - The threshold value to compare.
--
-- * 'tComparison' - The type of comparison. Only "less than" (LT) comparisons are supported.
threshold
    :: Threshold
threshold = Threshold' {_tThresholdValue = Nothing, _tComparison = Nothing}


-- | The threshold value to compare.
tThresholdValue :: Lens' Threshold (Maybe Double)
tThresholdValue = lens _tThresholdValue (\ s a -> s{_tThresholdValue = a})

-- | The type of comparison. Only "less than" (LT) comparisons are supported.
tComparison :: Lens' Threshold (Maybe Comparison)
tComparison = lens _tComparison (\ s a -> s{_tComparison = a})

instance FromJSON Threshold where
        parseJSON
          = withObject "Threshold"
              (\ x ->
                 Threshold' <$>
                   (x .:? "ThresholdValue") <*> (x .:? "Comparison"))

instance Hashable Threshold where

instance NFData Threshold where

instance ToJSON Threshold where
        toJSON Threshold'{..}
          = object
              (catMaybes
                 [("ThresholdValue" .=) <$> _tThresholdValue,
                  ("Comparison" .=) <$> _tComparison])

-- | Contains information about a user account for a Amazon Connect instance.
--
--
--
-- /See:/ 'user' smart constructor.
data User =
  User'
    { _uRoutingProfileId   :: !(Maybe Text)
    , _uDirectoryUserId    :: !(Maybe Text)
    , _uARN                :: !(Maybe Text)
    , _uIdentityInfo       :: !(Maybe UserIdentityInfo)
    , _uSecurityProfileIds :: !(Maybe (List1 Text))
    , _uUsername           :: !(Maybe Text)
    , _uId                 :: !(Maybe Text)
    , _uHierarchyGroupId   :: !(Maybe Text)
    , _uPhoneConfig        :: !(Maybe UserPhoneConfig)
    , _uTags               :: !(Maybe (Map Text Text))
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uRoutingProfileId' - The identifier of the routing profile for the user.
--
-- * 'uDirectoryUserId' - The identifier of the user account in the directory used for identity management.
--
-- * 'uARN' - The Amazon Resource Name (ARN) of the user account.
--
-- * 'uIdentityInfo' - Information about the user identity.
--
-- * 'uSecurityProfileIds' - The identifiers of the security profiles for the user.
--
-- * 'uUsername' - The user name assigned to the user account.
--
-- * 'uId' - The identifier of the user account.
--
-- * 'uHierarchyGroupId' - The identifier of the hierarchy group for the user.
--
-- * 'uPhoneConfig' - Information about the phone configuration for the user.
--
-- * 'uTags' - The tags.
user
    :: User
user =
  User'
    { _uRoutingProfileId = Nothing
    , _uDirectoryUserId = Nothing
    , _uARN = Nothing
    , _uIdentityInfo = Nothing
    , _uSecurityProfileIds = Nothing
    , _uUsername = Nothing
    , _uId = Nothing
    , _uHierarchyGroupId = Nothing
    , _uPhoneConfig = Nothing
    , _uTags = Nothing
    }


-- | The identifier of the routing profile for the user.
uRoutingProfileId :: Lens' User (Maybe Text)
uRoutingProfileId = lens _uRoutingProfileId (\ s a -> s{_uRoutingProfileId = a})

-- | The identifier of the user account in the directory used for identity management.
uDirectoryUserId :: Lens' User (Maybe Text)
uDirectoryUserId = lens _uDirectoryUserId (\ s a -> s{_uDirectoryUserId = a})

-- | The Amazon Resource Name (ARN) of the user account.
uARN :: Lens' User (Maybe Text)
uARN = lens _uARN (\ s a -> s{_uARN = a})

-- | Information about the user identity.
uIdentityInfo :: Lens' User (Maybe UserIdentityInfo)
uIdentityInfo = lens _uIdentityInfo (\ s a -> s{_uIdentityInfo = a})

-- | The identifiers of the security profiles for the user.
uSecurityProfileIds :: Lens' User (Maybe (NonEmpty Text))
uSecurityProfileIds = lens _uSecurityProfileIds (\ s a -> s{_uSecurityProfileIds = a}) . mapping _List1

-- | The user name assigned to the user account.
uUsername :: Lens' User (Maybe Text)
uUsername = lens _uUsername (\ s a -> s{_uUsername = a})

-- | The identifier of the user account.
uId :: Lens' User (Maybe Text)
uId = lens _uId (\ s a -> s{_uId = a})

-- | The identifier of the hierarchy group for the user.
uHierarchyGroupId :: Lens' User (Maybe Text)
uHierarchyGroupId = lens _uHierarchyGroupId (\ s a -> s{_uHierarchyGroupId = a})

-- | Information about the phone configuration for the user.
uPhoneConfig :: Lens' User (Maybe UserPhoneConfig)
uPhoneConfig = lens _uPhoneConfig (\ s a -> s{_uPhoneConfig = a})

-- | The tags.
uTags :: Lens' User (HashMap Text Text)
uTags = lens _uTags (\ s a -> s{_uTags = a}) . _Default . _Map

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ x ->
                 User' <$>
                   (x .:? "RoutingProfileId") <*>
                     (x .:? "DirectoryUserId")
                     <*> (x .:? "Arn")
                     <*> (x .:? "IdentityInfo")
                     <*> (x .:? "SecurityProfileIds")
                     <*> (x .:? "Username")
                     <*> (x .:? "Id")
                     <*> (x .:? "HierarchyGroupId")
                     <*> (x .:? "PhoneConfig")
                     <*> (x .:? "Tags" .!= mempty))

instance Hashable User where

instance NFData User where

-- | Contains information about the identity of a user.
--
--
--
-- /See:/ 'userIdentityInfo' smart constructor.
data UserIdentityInfo =
  UserIdentityInfo'
    { _uiiEmail     :: !(Maybe Text)
    , _uiiLastName  :: !(Maybe Text)
    , _uiiFirstName :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserIdentityInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiiEmail' - The email address. If you are using SAML for identity management and include this parameter, an error is returned.
--
-- * 'uiiLastName' - The last name. This is required if you are using Amazon Connect or SAML for identity management.
--
-- * 'uiiFirstName' - The first name. This is required if you are using Amazon Connect or SAML for identity management.
userIdentityInfo
    :: UserIdentityInfo
userIdentityInfo =
  UserIdentityInfo'
    {_uiiEmail = Nothing, _uiiLastName = Nothing, _uiiFirstName = Nothing}


-- | The email address. If you are using SAML for identity management and include this parameter, an error is returned.
uiiEmail :: Lens' UserIdentityInfo (Maybe Text)
uiiEmail = lens _uiiEmail (\ s a -> s{_uiiEmail = a})

-- | The last name. This is required if you are using Amazon Connect or SAML for identity management.
uiiLastName :: Lens' UserIdentityInfo (Maybe Text)
uiiLastName = lens _uiiLastName (\ s a -> s{_uiiLastName = a})

-- | The first name. This is required if you are using Amazon Connect or SAML for identity management.
uiiFirstName :: Lens' UserIdentityInfo (Maybe Text)
uiiFirstName = lens _uiiFirstName (\ s a -> s{_uiiFirstName = a})

instance FromJSON UserIdentityInfo where
        parseJSON
          = withObject "UserIdentityInfo"
              (\ x ->
                 UserIdentityInfo' <$>
                   (x .:? "Email") <*> (x .:? "LastName") <*>
                     (x .:? "FirstName"))

instance Hashable UserIdentityInfo where

instance NFData UserIdentityInfo where

instance ToJSON UserIdentityInfo where
        toJSON UserIdentityInfo'{..}
          = object
              (catMaybes
                 [("Email" .=) <$> _uiiEmail,
                  ("LastName" .=) <$> _uiiLastName,
                  ("FirstName" .=) <$> _uiiFirstName])

-- | Contains information about the phone configuration settings for a user.
--
--
--
-- /See:/ 'userPhoneConfig' smart constructor.
data UserPhoneConfig =
  UserPhoneConfig'
    { _upcAutoAccept                :: !(Maybe Bool)
    , _upcAfterContactWorkTimeLimit :: !(Maybe Nat)
    , _upcDeskPhoneNumber           :: !(Maybe Text)
    , _upcPhoneType                 :: !PhoneType
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserPhoneConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upcAutoAccept' - The Auto accept setting.
--
-- * 'upcAfterContactWorkTimeLimit' - The After Call Work (ACW) timeout setting, in seconds.
--
-- * 'upcDeskPhoneNumber' - The phone number for the user's desk phone.
--
-- * 'upcPhoneType' - The phone type.
userPhoneConfig
    :: PhoneType -- ^ 'upcPhoneType'
    -> UserPhoneConfig
userPhoneConfig pPhoneType_ =
  UserPhoneConfig'
    { _upcAutoAccept = Nothing
    , _upcAfterContactWorkTimeLimit = Nothing
    , _upcDeskPhoneNumber = Nothing
    , _upcPhoneType = pPhoneType_
    }


-- | The Auto accept setting.
upcAutoAccept :: Lens' UserPhoneConfig (Maybe Bool)
upcAutoAccept = lens _upcAutoAccept (\ s a -> s{_upcAutoAccept = a})

-- | The After Call Work (ACW) timeout setting, in seconds.
upcAfterContactWorkTimeLimit :: Lens' UserPhoneConfig (Maybe Natural)
upcAfterContactWorkTimeLimit = lens _upcAfterContactWorkTimeLimit (\ s a -> s{_upcAfterContactWorkTimeLimit = a}) . mapping _Nat

-- | The phone number for the user's desk phone.
upcDeskPhoneNumber :: Lens' UserPhoneConfig (Maybe Text)
upcDeskPhoneNumber = lens _upcDeskPhoneNumber (\ s a -> s{_upcDeskPhoneNumber = a})

-- | The phone type.
upcPhoneType :: Lens' UserPhoneConfig PhoneType
upcPhoneType = lens _upcPhoneType (\ s a -> s{_upcPhoneType = a})

instance FromJSON UserPhoneConfig where
        parseJSON
          = withObject "UserPhoneConfig"
              (\ x ->
                 UserPhoneConfig' <$>
                   (x .:? "AutoAccept") <*>
                     (x .:? "AfterContactWorkTimeLimit")
                     <*> (x .:? "DeskPhoneNumber")
                     <*> (x .: "PhoneType"))

instance Hashable UserPhoneConfig where

instance NFData UserPhoneConfig where

instance ToJSON UserPhoneConfig where
        toJSON UserPhoneConfig'{..}
          = object
              (catMaybes
                 [("AutoAccept" .=) <$> _upcAutoAccept,
                  ("AfterContactWorkTimeLimit" .=) <$>
                    _upcAfterContactWorkTimeLimit,
                  ("DeskPhoneNumber" .=) <$> _upcDeskPhoneNumber,
                  Just ("PhoneType" .= _upcPhoneType)])

-- | Contains summary information about a user.
--
--
--
-- /See:/ 'userSummary' smart constructor.
data UserSummary =
  UserSummary'
    { _usARN      :: !(Maybe Text)
    , _usUsername :: !(Maybe Text)
    , _usId       :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usARN' - The Amazon Resource Name (ARN) of the user account.
--
-- * 'usUsername' - The Amazon Connect user name of the user account.
--
-- * 'usId' - The identifier of the user account.
userSummary
    :: UserSummary
userSummary =
  UserSummary' {_usARN = Nothing, _usUsername = Nothing, _usId = Nothing}


-- | The Amazon Resource Name (ARN) of the user account.
usARN :: Lens' UserSummary (Maybe Text)
usARN = lens _usARN (\ s a -> s{_usARN = a})

-- | The Amazon Connect user name of the user account.
usUsername :: Lens' UserSummary (Maybe Text)
usUsername = lens _usUsername (\ s a -> s{_usUsername = a})

-- | The identifier of the user account.
usId :: Lens' UserSummary (Maybe Text)
usId = lens _usId (\ s a -> s{_usId = a})

instance FromJSON UserSummary where
        parseJSON
          = withObject "UserSummary"
              (\ x ->
                 UserSummary' <$>
                   (x .:? "Arn") <*> (x .:? "Username") <*>
                     (x .:? "Id"))

instance Hashable UserSummary where

instance NFData UserSummary where
