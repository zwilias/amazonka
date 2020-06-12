{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Crawler
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.Crawler where

import Network.AWS.Glue.Types.CrawlerState
import Network.AWS.Glue.Types.CrawlerTargets
import Network.AWS.Glue.Types.LastCrawlInfo
import Network.AWS.Glue.Types.Schedule
import Network.AWS.Glue.Types.SchemaChangePolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies a crawler program that examines a data source and uses classifiers to try to determine its schema. If successful, the crawler records metadata concerning the data source in the AWS Glue Data Catalog.
--
--
--
-- /See:/ 'crawler' smart constructor.
data Crawler = Crawler'{_craCreationTime ::
                        !(Maybe POSIX),
                        _craState :: !(Maybe CrawlerState),
                        _craSchemaChangePolicy ::
                        !(Maybe SchemaChangePolicy),
                        _craLastUpdated :: !(Maybe POSIX),
                        _craSchedule :: !(Maybe Schedule),
                        _craLastCrawl :: !(Maybe LastCrawlInfo),
                        _craCrawlElapsedTime :: !(Maybe Integer),
                        _craClassifiers :: !(Maybe [Text]),
                        _craRole :: !(Maybe Text), _craName :: !(Maybe Text),
                        _craTargets :: !(Maybe CrawlerTargets),
                        _craVersion :: !(Maybe Integer),
                        _craDatabaseName :: !(Maybe Text),
                        _craConfiguration :: !(Maybe Text),
                        _craTablePrefix :: !(Maybe Text),
                        _craDescription :: !(Maybe Text)}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Crawler' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'craCreationTime' - The time when the crawler was created.
--
-- * 'craState' - Indicates whether the crawler is running, or whether a run is pending.
--
-- * 'craSchemaChangePolicy' - Sets the behavior when the crawler finds a changed or deleted object.
--
-- * 'craLastUpdated' - The time the crawler was last updated.
--
-- * 'craSchedule' - For scheduled crawlers, the schedule when the crawler runs.
--
-- * 'craLastCrawl' - The status of the last crawl, and potentially error information if an error occurred.
--
-- * 'craCrawlElapsedTime' - If the crawler is running, contains the total time elapsed since the last crawl began.
--
-- * 'craClassifiers' - A list of custom classifiers associated with the crawler.
--
-- * 'craRole' - The IAM role (or ARN of an IAM role) used to access customer resources, such as data in Amazon S3.
--
-- * 'craName' - The crawler name.
--
-- * 'craTargets' - A collection of targets to crawl.
--
-- * 'craVersion' - The version of the crawler.
--
-- * 'craDatabaseName' - The database where metadata is written by this crawler.
--
-- * 'craConfiguration' - Crawler configuration information. This versioned JSON string allows users to specify aspects of a Crawler's behavior. You can use this field to force partitions to inherit metadata such as classification, input format, output format, serde information, and schema from their parent table, rather than detect this information separately for each partition. Use the following JSON string to specify that behavior: Example: @'{ "Version": 1.0, "CrawlerOutput": { "Partitions": { "AddOrUpdateBehavior": "InheritFromTable" } } }'@ 
--
-- * 'craTablePrefix' - The prefix added to the names of tables that are created.
--
-- * 'craDescription' - A description of the crawler.
crawler
    :: Crawler
crawler
  = Crawler'{_craCreationTime = Nothing,
             _craState = Nothing,
             _craSchemaChangePolicy = Nothing,
             _craLastUpdated = Nothing, _craSchedule = Nothing,
             _craLastCrawl = Nothing,
             _craCrawlElapsedTime = Nothing,
             _craClassifiers = Nothing, _craRole = Nothing,
             _craName = Nothing, _craTargets = Nothing,
             _craVersion = Nothing, _craDatabaseName = Nothing,
             _craConfiguration = Nothing,
             _craTablePrefix = Nothing, _craDescription = Nothing}

-- | The time when the crawler was created.
craCreationTime :: Lens' Crawler (Maybe UTCTime)
craCreationTime = lens _craCreationTime (\ s a -> s{_craCreationTime = a}) . mapping _Time

-- | Indicates whether the crawler is running, or whether a run is pending.
craState :: Lens' Crawler (Maybe CrawlerState)
craState = lens _craState (\ s a -> s{_craState = a})

-- | Sets the behavior when the crawler finds a changed or deleted object.
craSchemaChangePolicy :: Lens' Crawler (Maybe SchemaChangePolicy)
craSchemaChangePolicy = lens _craSchemaChangePolicy (\ s a -> s{_craSchemaChangePolicy = a})

-- | The time the crawler was last updated.
craLastUpdated :: Lens' Crawler (Maybe UTCTime)
craLastUpdated = lens _craLastUpdated (\ s a -> s{_craLastUpdated = a}) . mapping _Time

-- | For scheduled crawlers, the schedule when the crawler runs.
craSchedule :: Lens' Crawler (Maybe Schedule)
craSchedule = lens _craSchedule (\ s a -> s{_craSchedule = a})

-- | The status of the last crawl, and potentially error information if an error occurred.
craLastCrawl :: Lens' Crawler (Maybe LastCrawlInfo)
craLastCrawl = lens _craLastCrawl (\ s a -> s{_craLastCrawl = a})

-- | If the crawler is running, contains the total time elapsed since the last crawl began.
craCrawlElapsedTime :: Lens' Crawler (Maybe Integer)
craCrawlElapsedTime = lens _craCrawlElapsedTime (\ s a -> s{_craCrawlElapsedTime = a})

-- | A list of custom classifiers associated with the crawler.
craClassifiers :: Lens' Crawler [Text]
craClassifiers = lens _craClassifiers (\ s a -> s{_craClassifiers = a}) . _Default . _Coerce

-- | The IAM role (or ARN of an IAM role) used to access customer resources, such as data in Amazon S3.
craRole :: Lens' Crawler (Maybe Text)
craRole = lens _craRole (\ s a -> s{_craRole = a})

-- | The crawler name.
craName :: Lens' Crawler (Maybe Text)
craName = lens _craName (\ s a -> s{_craName = a})

-- | A collection of targets to crawl.
craTargets :: Lens' Crawler (Maybe CrawlerTargets)
craTargets = lens _craTargets (\ s a -> s{_craTargets = a})

-- | The version of the crawler.
craVersion :: Lens' Crawler (Maybe Integer)
craVersion = lens _craVersion (\ s a -> s{_craVersion = a})

-- | The database where metadata is written by this crawler.
craDatabaseName :: Lens' Crawler (Maybe Text)
craDatabaseName = lens _craDatabaseName (\ s a -> s{_craDatabaseName = a})

-- | Crawler configuration information. This versioned JSON string allows users to specify aspects of a Crawler's behavior. You can use this field to force partitions to inherit metadata such as classification, input format, output format, serde information, and schema from their parent table, rather than detect this information separately for each partition. Use the following JSON string to specify that behavior: Example: @'{ "Version": 1.0, "CrawlerOutput": { "Partitions": { "AddOrUpdateBehavior": "InheritFromTable" } } }'@ 
craConfiguration :: Lens' Crawler (Maybe Text)
craConfiguration = lens _craConfiguration (\ s a -> s{_craConfiguration = a})

-- | The prefix added to the names of tables that are created.
craTablePrefix :: Lens' Crawler (Maybe Text)
craTablePrefix = lens _craTablePrefix (\ s a -> s{_craTablePrefix = a})

-- | A description of the crawler.
craDescription :: Lens' Crawler (Maybe Text)
craDescription = lens _craDescription (\ s a -> s{_craDescription = a})

instance FromJSON Crawler where
        parseJSON
          = withObject "Crawler"
              (\ x ->
                 Crawler' <$>
                   (x .:? "CreationTime") <*> (x .:? "State") <*>
                     (x .:? "SchemaChangePolicy")
                     <*> (x .:? "LastUpdated")
                     <*> (x .:? "Schedule")
                     <*> (x .:? "LastCrawl")
                     <*> (x .:? "CrawlElapsedTime")
                     <*> (x .:? "Classifiers" .!= mempty)
                     <*> (x .:? "Role")
                     <*> (x .:? "Name")
                     <*> (x .:? "Targets")
                     <*> (x .:? "Version")
                     <*> (x .:? "DatabaseName")
                     <*> (x .:? "Configuration")
                     <*> (x .:? "TablePrefix")
                     <*> (x .:? "Description"))

instance Hashable Crawler where

instance NFData Crawler where
