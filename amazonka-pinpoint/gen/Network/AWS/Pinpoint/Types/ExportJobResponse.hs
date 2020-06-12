{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ExportJobResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ExportJobResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ExportJobResource
import Network.AWS.Pinpoint.Types.JobStatus
import Network.AWS.Prelude

-- | /See:/ 'exportJobResponse' smart constructor.
data ExportJobResponse = ExportJobResponse'{_ejCompletedPieces
                                            :: !(Maybe Int),
                                            _ejFailedPieces :: !(Maybe Int),
                                            _ejDefinition ::
                                            !(Maybe ExportJobResource),
                                            _ejTotalProcessed :: !(Maybe Int),
                                            _ejFailures :: !(Maybe [Text]),
                                            _ejTotalPieces :: !(Maybe Int),
                                            _ejApplicationId :: !(Maybe Text),
                                            _ejId :: !(Maybe Text),
                                            _ejCreationDate :: !(Maybe Text),
                                            _ejType :: !(Maybe Text),
                                            _ejCompletionDate :: !(Maybe Text),
                                            _ejJobStatus :: !(Maybe JobStatus),
                                            _ejTotalFailures :: !(Maybe Int)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ejCompletedPieces' - The number of pieces that have successfully completed as of the time of the request.
--
-- * 'ejFailedPieces' - The number of pieces that failed to be processed as of the time of the request.
--
-- * 'ejDefinition' - The export job settings.
--
-- * 'ejTotalProcessed' - The number of endpoints that were processed by the job.
--
-- * 'ejFailures' - Provides up to 100 of the first failed entries for the job, if any exist.
--
-- * 'ejTotalPieces' - The total number of pieces that must be processed to finish the job. Each piece is an approximately equal portion of the endpoints.
--
-- * 'ejApplicationId' - The unique ID of the application to which the job applies.
--
-- * 'ejId' - The unique ID of the job.
--
-- * 'ejCreationDate' - The date the job was created in ISO 8601 format.
--
-- * 'ejType' - The job type. Will be 'EXPORT'.
--
-- * 'ejCompletionDate' - The date the job completed in ISO 8601 format.
--
-- * 'ejJobStatus' - The status of the job. Valid values: CREATED, INITIALIZING, PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED The job status is FAILED if one or more pieces failed.
--
-- * 'ejTotalFailures' - The number of endpoints that were not processed; for example, because of syntax errors.
exportJobResponse
    :: ExportJobResponse
exportJobResponse
  = ExportJobResponse'{_ejCompletedPieces = Nothing,
                       _ejFailedPieces = Nothing, _ejDefinition = Nothing,
                       _ejTotalProcessed = Nothing, _ejFailures = Nothing,
                       _ejTotalPieces = Nothing, _ejApplicationId = Nothing,
                       _ejId = Nothing, _ejCreationDate = Nothing,
                       _ejType = Nothing, _ejCompletionDate = Nothing,
                       _ejJobStatus = Nothing, _ejTotalFailures = Nothing}

-- | The number of pieces that have successfully completed as of the time of the request.
ejCompletedPieces :: Lens' ExportJobResponse (Maybe Int)
ejCompletedPieces = lens _ejCompletedPieces (\ s a -> s{_ejCompletedPieces = a})

-- | The number of pieces that failed to be processed as of the time of the request.
ejFailedPieces :: Lens' ExportJobResponse (Maybe Int)
ejFailedPieces = lens _ejFailedPieces (\ s a -> s{_ejFailedPieces = a})

-- | The export job settings.
ejDefinition :: Lens' ExportJobResponse (Maybe ExportJobResource)
ejDefinition = lens _ejDefinition (\ s a -> s{_ejDefinition = a})

-- | The number of endpoints that were processed by the job.
ejTotalProcessed :: Lens' ExportJobResponse (Maybe Int)
ejTotalProcessed = lens _ejTotalProcessed (\ s a -> s{_ejTotalProcessed = a})

-- | Provides up to 100 of the first failed entries for the job, if any exist.
ejFailures :: Lens' ExportJobResponse [Text]
ejFailures = lens _ejFailures (\ s a -> s{_ejFailures = a}) . _Default . _Coerce

-- | The total number of pieces that must be processed to finish the job. Each piece is an approximately equal portion of the endpoints.
ejTotalPieces :: Lens' ExportJobResponse (Maybe Int)
ejTotalPieces = lens _ejTotalPieces (\ s a -> s{_ejTotalPieces = a})

-- | The unique ID of the application to which the job applies.
ejApplicationId :: Lens' ExportJobResponse (Maybe Text)
ejApplicationId = lens _ejApplicationId (\ s a -> s{_ejApplicationId = a})

-- | The unique ID of the job.
ejId :: Lens' ExportJobResponse (Maybe Text)
ejId = lens _ejId (\ s a -> s{_ejId = a})

-- | The date the job was created in ISO 8601 format.
ejCreationDate :: Lens' ExportJobResponse (Maybe Text)
ejCreationDate = lens _ejCreationDate (\ s a -> s{_ejCreationDate = a})

-- | The job type. Will be 'EXPORT'.
ejType :: Lens' ExportJobResponse (Maybe Text)
ejType = lens _ejType (\ s a -> s{_ejType = a})

-- | The date the job completed in ISO 8601 format.
ejCompletionDate :: Lens' ExportJobResponse (Maybe Text)
ejCompletionDate = lens _ejCompletionDate (\ s a -> s{_ejCompletionDate = a})

-- | The status of the job. Valid values: CREATED, INITIALIZING, PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED The job status is FAILED if one or more pieces failed.
ejJobStatus :: Lens' ExportJobResponse (Maybe JobStatus)
ejJobStatus = lens _ejJobStatus (\ s a -> s{_ejJobStatus = a})

-- | The number of endpoints that were not processed; for example, because of syntax errors.
ejTotalFailures :: Lens' ExportJobResponse (Maybe Int)
ejTotalFailures = lens _ejTotalFailures (\ s a -> s{_ejTotalFailures = a})

instance FromJSON ExportJobResponse where
        parseJSON
          = withObject "ExportJobResponse"
              (\ x ->
                 ExportJobResponse' <$>
                   (x .:? "CompletedPieces") <*> (x .:? "FailedPieces")
                     <*> (x .:? "Definition")
                     <*> (x .:? "TotalProcessed")
                     <*> (x .:? "Failures" .!= mempty)
                     <*> (x .:? "TotalPieces")
                     <*> (x .:? "ApplicationId")
                     <*> (x .:? "Id")
                     <*> (x .:? "CreationDate")
                     <*> (x .:? "Type")
                     <*> (x .:? "CompletionDate")
                     <*> (x .:? "JobStatus")
                     <*> (x .:? "TotalFailures"))

instance Hashable ExportJobResponse where

instance NFData ExportJobResponse where
