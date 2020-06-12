{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ImportJobResponse
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.ImportJobResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ImportJobResource
import Network.AWS.Pinpoint.Types.JobStatus
import Network.AWS.Prelude

-- | /See:/ 'importJobResponse' smart constructor.
data ImportJobResponse = ImportJobResponse'{_ijCompletedPieces
                                            :: !(Maybe Int),
                                            _ijFailedPieces :: !(Maybe Int),
                                            _ijDefinition ::
                                            !(Maybe ImportJobResource),
                                            _ijTotalProcessed :: !(Maybe Int),
                                            _ijFailures :: !(Maybe [Text]),
                                            _ijTotalPieces :: !(Maybe Int),
                                            _ijApplicationId :: !(Maybe Text),
                                            _ijId :: !(Maybe Text),
                                            _ijCreationDate :: !(Maybe Text),
                                            _ijType :: !(Maybe Text),
                                            _ijCompletionDate :: !(Maybe Text),
                                            _ijJobStatus :: !(Maybe JobStatus),
                                            _ijTotalFailures :: !(Maybe Int)}
                           deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ijCompletedPieces' - The number of pieces that have successfully imported as of the time of the request.
--
-- * 'ijFailedPieces' - The number of pieces that have failed to import as of the time of the request.
--
-- * 'ijDefinition' - The import job settings.
--
-- * 'ijTotalProcessed' - The number of endpoints that were processed by the import job.
--
-- * 'ijFailures' - Provides up to 100 of the first failed entries for the job, if any exist.
--
-- * 'ijTotalPieces' - The total number of pieces that must be imported to finish the job. Each piece is an approximately equal portion of the endpoints to import.
--
-- * 'ijApplicationId' - The unique ID of the application to which the import job applies.
--
-- * 'ijId' - The unique ID of the import job.
--
-- * 'ijCreationDate' - The date the import job was created in ISO 8601 format.
--
-- * 'ijType' - The job type. Will be Import.
--
-- * 'ijCompletionDate' - The date the import job completed in ISO 8601 format.
--
-- * 'ijJobStatus' - The status of the import job. Valid values: CREATED, INITIALIZING, PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED The job status is FAILED if one or more pieces failed to import.
--
-- * 'ijTotalFailures' - The number of endpoints that failed to import; for example, because of syntax errors.
importJobResponse
    :: ImportJobResponse
importJobResponse
  = ImportJobResponse'{_ijCompletedPieces = Nothing,
                       _ijFailedPieces = Nothing, _ijDefinition = Nothing,
                       _ijTotalProcessed = Nothing, _ijFailures = Nothing,
                       _ijTotalPieces = Nothing, _ijApplicationId = Nothing,
                       _ijId = Nothing, _ijCreationDate = Nothing,
                       _ijType = Nothing, _ijCompletionDate = Nothing,
                       _ijJobStatus = Nothing, _ijTotalFailures = Nothing}

-- | The number of pieces that have successfully imported as of the time of the request.
ijCompletedPieces :: Lens' ImportJobResponse (Maybe Int)
ijCompletedPieces = lens _ijCompletedPieces (\ s a -> s{_ijCompletedPieces = a})

-- | The number of pieces that have failed to import as of the time of the request.
ijFailedPieces :: Lens' ImportJobResponse (Maybe Int)
ijFailedPieces = lens _ijFailedPieces (\ s a -> s{_ijFailedPieces = a})

-- | The import job settings.
ijDefinition :: Lens' ImportJobResponse (Maybe ImportJobResource)
ijDefinition = lens _ijDefinition (\ s a -> s{_ijDefinition = a})

-- | The number of endpoints that were processed by the import job.
ijTotalProcessed :: Lens' ImportJobResponse (Maybe Int)
ijTotalProcessed = lens _ijTotalProcessed (\ s a -> s{_ijTotalProcessed = a})

-- | Provides up to 100 of the first failed entries for the job, if any exist.
ijFailures :: Lens' ImportJobResponse [Text]
ijFailures = lens _ijFailures (\ s a -> s{_ijFailures = a}) . _Default . _Coerce

-- | The total number of pieces that must be imported to finish the job. Each piece is an approximately equal portion of the endpoints to import.
ijTotalPieces :: Lens' ImportJobResponse (Maybe Int)
ijTotalPieces = lens _ijTotalPieces (\ s a -> s{_ijTotalPieces = a})

-- | The unique ID of the application to which the import job applies.
ijApplicationId :: Lens' ImportJobResponse (Maybe Text)
ijApplicationId = lens _ijApplicationId (\ s a -> s{_ijApplicationId = a})

-- | The unique ID of the import job.
ijId :: Lens' ImportJobResponse (Maybe Text)
ijId = lens _ijId (\ s a -> s{_ijId = a})

-- | The date the import job was created in ISO 8601 format.
ijCreationDate :: Lens' ImportJobResponse (Maybe Text)
ijCreationDate = lens _ijCreationDate (\ s a -> s{_ijCreationDate = a})

-- | The job type. Will be Import.
ijType :: Lens' ImportJobResponse (Maybe Text)
ijType = lens _ijType (\ s a -> s{_ijType = a})

-- | The date the import job completed in ISO 8601 format.
ijCompletionDate :: Lens' ImportJobResponse (Maybe Text)
ijCompletionDate = lens _ijCompletionDate (\ s a -> s{_ijCompletionDate = a})

-- | The status of the import job. Valid values: CREATED, INITIALIZING, PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED The job status is FAILED if one or more pieces failed to import.
ijJobStatus :: Lens' ImportJobResponse (Maybe JobStatus)
ijJobStatus = lens _ijJobStatus (\ s a -> s{_ijJobStatus = a})

-- | The number of endpoints that failed to import; for example, because of syntax errors.
ijTotalFailures :: Lens' ImportJobResponse (Maybe Int)
ijTotalFailures = lens _ijTotalFailures (\ s a -> s{_ijTotalFailures = a})

instance FromJSON ImportJobResponse where
        parseJSON
          = withObject "ImportJobResponse"
              (\ x ->
                 ImportJobResponse' <$>
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

instance Hashable ImportJobResponse where

instance NFData ImportJobResponse where
