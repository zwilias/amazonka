{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.Finding
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.GuardDuty.Types.Finding where

import Network.AWS.GuardDuty.Types.Resource
import Network.AWS.GuardDuty.Types.ServiceInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Representation of a abnormal or suspicious activity.
--
-- /See:/ 'finding' smart constructor.
data Finding = Finding'{_fService ::
                        !(Maybe ServiceInfo),
                        _fConfidence :: !(Maybe Double),
                        _fPartition :: !(Maybe Text),
                        _fTitle :: !(Maybe Text),
                        _fDescription :: !(Maybe Text), _fAccountId :: !Text,
                        _fSchemaVersion :: !Text, _fCreatedAt :: !Text,
                        _fResource :: !Resource, _fSeverity :: !Double,
                        _fUpdatedAt :: !Text, _fType :: !Text,
                        _fRegion :: !Text, _fId :: !Text, _fARN :: !Text}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Finding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fService' - Additional information assigned to the generated finding by GuardDuty.
--
-- * 'fConfidence' - The confidence level of a finding.
--
-- * 'fPartition' - The AWS resource partition.
--
-- * 'fTitle' - The title of a finding.
--
-- * 'fDescription' - The description of a finding.
--
-- * 'fAccountId' - AWS account ID where the activity occurred that prompted GuardDuty to generate a finding.
--
-- * 'fSchemaVersion' - Findings' schema version.
--
-- * 'fCreatedAt' - The time stamp at which a finding was generated.
--
-- * 'fResource' - The AWS resource associated with the activity that prompted GuardDuty to generate a finding.
--
-- * 'fSeverity' - The severity of a finding.
--
-- * 'fUpdatedAt' - The time stamp at which a finding was last updated.
--
-- * 'fType' - The type of a finding described by the action.
--
-- * 'fRegion' - The AWS region where the activity occurred that prompted GuardDuty to generate a finding.
--
-- * 'fId' - The identifier that corresponds to a finding described by the action.
--
-- * 'fARN' - The ARN of a finding described by the action.
finding
    :: Text -- ^ 'fAccountId'
    -> Text -- ^ 'fSchemaVersion'
    -> Text -- ^ 'fCreatedAt'
    -> Resource -- ^ 'fResource'
    -> Double -- ^ 'fSeverity'
    -> Text -- ^ 'fUpdatedAt'
    -> Text -- ^ 'fType'
    -> Text -- ^ 'fRegion'
    -> Text -- ^ 'fId'
    -> Text -- ^ 'fARN'
    -> Finding
finding pAccountId_ pSchemaVersion_ pCreatedAt_
  pResource_ pSeverity_ pUpdatedAt_ pType_ pRegion_
  pId_ pARN_
  = Finding'{_fService = Nothing,
             _fConfidence = Nothing, _fPartition = Nothing,
             _fTitle = Nothing, _fDescription = Nothing,
             _fAccountId = pAccountId_,
             _fSchemaVersion = pSchemaVersion_,
             _fCreatedAt = pCreatedAt_, _fResource = pResource_,
             _fSeverity = pSeverity_, _fUpdatedAt = pUpdatedAt_,
             _fType = pType_, _fRegion = pRegion_, _fId = pId_,
             _fARN = pARN_}

-- | Additional information assigned to the generated finding by GuardDuty.
fService :: Lens' Finding (Maybe ServiceInfo)
fService = lens _fService (\ s a -> s{_fService = a})

-- | The confidence level of a finding.
fConfidence :: Lens' Finding (Maybe Double)
fConfidence = lens _fConfidence (\ s a -> s{_fConfidence = a})

-- | The AWS resource partition.
fPartition :: Lens' Finding (Maybe Text)
fPartition = lens _fPartition (\ s a -> s{_fPartition = a})

-- | The title of a finding.
fTitle :: Lens' Finding (Maybe Text)
fTitle = lens _fTitle (\ s a -> s{_fTitle = a})

-- | The description of a finding.
fDescription :: Lens' Finding (Maybe Text)
fDescription = lens _fDescription (\ s a -> s{_fDescription = a})

-- | AWS account ID where the activity occurred that prompted GuardDuty to generate a finding.
fAccountId :: Lens' Finding Text
fAccountId = lens _fAccountId (\ s a -> s{_fAccountId = a})

-- | Findings' schema version.
fSchemaVersion :: Lens' Finding Text
fSchemaVersion = lens _fSchemaVersion (\ s a -> s{_fSchemaVersion = a})

-- | The time stamp at which a finding was generated.
fCreatedAt :: Lens' Finding Text
fCreatedAt = lens _fCreatedAt (\ s a -> s{_fCreatedAt = a})

-- | The AWS resource associated with the activity that prompted GuardDuty to generate a finding.
fResource :: Lens' Finding Resource
fResource = lens _fResource (\ s a -> s{_fResource = a})

-- | The severity of a finding.
fSeverity :: Lens' Finding Double
fSeverity = lens _fSeverity (\ s a -> s{_fSeverity = a})

-- | The time stamp at which a finding was last updated.
fUpdatedAt :: Lens' Finding Text
fUpdatedAt = lens _fUpdatedAt (\ s a -> s{_fUpdatedAt = a})

-- | The type of a finding described by the action.
fType :: Lens' Finding Text
fType = lens _fType (\ s a -> s{_fType = a})

-- | The AWS region where the activity occurred that prompted GuardDuty to generate a finding.
fRegion :: Lens' Finding Text
fRegion = lens _fRegion (\ s a -> s{_fRegion = a})

-- | The identifier that corresponds to a finding described by the action.
fId :: Lens' Finding Text
fId = lens _fId (\ s a -> s{_fId = a})

-- | The ARN of a finding described by the action.
fARN :: Lens' Finding Text
fARN = lens _fARN (\ s a -> s{_fARN = a})

instance FromJSON Finding where
        parseJSON
          = withObject "Finding"
              (\ x ->
                 Finding' <$>
                   (x .:? "service") <*> (x .:? "confidence") <*>
                     (x .:? "partition")
                     <*> (x .:? "title")
                     <*> (x .:? "description")
                     <*> (x .: "accountId")
                     <*> (x .: "schemaVersion")
                     <*> (x .: "createdAt")
                     <*> (x .: "resource")
                     <*> (x .: "severity")
                     <*> (x .: "updatedAt")
                     <*> (x .: "type")
                     <*> (x .: "region")
                     <*> (x .: "id")
                     <*> (x .: "arn"))

instance Hashable Finding where

instance NFData Finding where
