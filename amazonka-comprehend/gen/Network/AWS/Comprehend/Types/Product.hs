{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.Product
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Comprehend.Types.Product where

import Network.AWS.Comprehend.Types.Sum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.
--
--
--
-- /See:/ 'batchDetectDominantLanguageItemResult' smart constructor.
data BatchDetectDominantLanguageItemResult =
  BatchDetectDominantLanguageItemResult'
    { _bddlirLanguages :: !(Maybe [DominantLanguage])
    , _bddlirIndex     :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDetectDominantLanguageItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bddlirLanguages' - One or more 'DominantLanguage' objects describing the dominant languages in the document.
--
-- * 'bddlirIndex' - The zero-based index of the document in the input list.
batchDetectDominantLanguageItemResult
    :: BatchDetectDominantLanguageItemResult
batchDetectDominantLanguageItemResult =
  BatchDetectDominantLanguageItemResult'
    {_bddlirLanguages = Nothing, _bddlirIndex = Nothing}


-- | One or more 'DominantLanguage' objects describing the dominant languages in the document.
bddlirLanguages :: Lens' BatchDetectDominantLanguageItemResult [DominantLanguage]
bddlirLanguages = lens _bddlirLanguages (\ s a -> s{_bddlirLanguages = a}) . _Default . _Coerce

-- | The zero-based index of the document in the input list.
bddlirIndex :: Lens' BatchDetectDominantLanguageItemResult (Maybe Int)
bddlirIndex = lens _bddlirIndex (\ s a -> s{_bddlirIndex = a})

instance FromJSON
           BatchDetectDominantLanguageItemResult
         where
        parseJSON
          = withObject "BatchDetectDominantLanguageItemResult"
              (\ x ->
                 BatchDetectDominantLanguageItemResult' <$>
                   (x .:? "Languages" .!= mempty) <*> (x .:? "Index"))

instance Hashable
           BatchDetectDominantLanguageItemResult
         where

instance NFData BatchDetectDominantLanguageItemResult
         where

-- | The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.
--
--
--
-- /See:/ 'batchDetectEntitiesItemResult' smart constructor.
data BatchDetectEntitiesItemResult =
  BatchDetectEntitiesItemResult'
    { _bdeirEntities :: !(Maybe [Entity])
    , _bdeirIndex    :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDetectEntitiesItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdeirEntities' - One or more 'Entity' objects, one for each entity detected in the document.
--
-- * 'bdeirIndex' - The zero-based index of the document in the input list.
batchDetectEntitiesItemResult
    :: BatchDetectEntitiesItemResult
batchDetectEntitiesItemResult =
  BatchDetectEntitiesItemResult'
    {_bdeirEntities = Nothing, _bdeirIndex = Nothing}


-- | One or more 'Entity' objects, one for each entity detected in the document.
bdeirEntities :: Lens' BatchDetectEntitiesItemResult [Entity]
bdeirEntities = lens _bdeirEntities (\ s a -> s{_bdeirEntities = a}) . _Default . _Coerce

-- | The zero-based index of the document in the input list.
bdeirIndex :: Lens' BatchDetectEntitiesItemResult (Maybe Int)
bdeirIndex = lens _bdeirIndex (\ s a -> s{_bdeirIndex = a})

instance FromJSON BatchDetectEntitiesItemResult where
        parseJSON
          = withObject "BatchDetectEntitiesItemResult"
              (\ x ->
                 BatchDetectEntitiesItemResult' <$>
                   (x .:? "Entities" .!= mempty) <*> (x .:? "Index"))

instance Hashable BatchDetectEntitiesItemResult where

instance NFData BatchDetectEntitiesItemResult where

-- | The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.
--
--
--
-- /See:/ 'batchDetectKeyPhrasesItemResult' smart constructor.
data BatchDetectKeyPhrasesItemResult =
  BatchDetectKeyPhrasesItemResult'
    { _bdkpirIndex      :: !(Maybe Int)
    , _bdkpirKeyPhrases :: !(Maybe [KeyPhrase])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDetectKeyPhrasesItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdkpirIndex' - The zero-based index of the document in the input list.
--
-- * 'bdkpirKeyPhrases' - One or more 'KeyPhrase' objects, one for each key phrase detected in the document.
batchDetectKeyPhrasesItemResult
    :: BatchDetectKeyPhrasesItemResult
batchDetectKeyPhrasesItemResult =
  BatchDetectKeyPhrasesItemResult'
    {_bdkpirIndex = Nothing, _bdkpirKeyPhrases = Nothing}


-- | The zero-based index of the document in the input list.
bdkpirIndex :: Lens' BatchDetectKeyPhrasesItemResult (Maybe Int)
bdkpirIndex = lens _bdkpirIndex (\ s a -> s{_bdkpirIndex = a})

-- | One or more 'KeyPhrase' objects, one for each key phrase detected in the document.
bdkpirKeyPhrases :: Lens' BatchDetectKeyPhrasesItemResult [KeyPhrase]
bdkpirKeyPhrases = lens _bdkpirKeyPhrases (\ s a -> s{_bdkpirKeyPhrases = a}) . _Default . _Coerce

instance FromJSON BatchDetectKeyPhrasesItemResult
         where
        parseJSON
          = withObject "BatchDetectKeyPhrasesItemResult"
              (\ x ->
                 BatchDetectKeyPhrasesItemResult' <$>
                   (x .:? "Index") <*> (x .:? "KeyPhrases" .!= mempty))

instance Hashable BatchDetectKeyPhrasesItemResult
         where

instance NFData BatchDetectKeyPhrasesItemResult where

-- | The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.
--
--
--
-- /See:/ 'batchDetectSentimentItemResult' smart constructor.
data BatchDetectSentimentItemResult =
  BatchDetectSentimentItemResult'
    { _bSentiment      :: !(Maybe SentimentType)
    , _bSentimentScore :: !(Maybe SentimentScore)
    , _bIndex          :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDetectSentimentItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bSentiment' - The sentiment detected in the document.
--
-- * 'bSentimentScore' - The level of confidence that Amazon Comprehend has in the accuracy of its sentiment detection.
--
-- * 'bIndex' - The zero-based index of the document in the input list.
batchDetectSentimentItemResult
    :: BatchDetectSentimentItemResult
batchDetectSentimentItemResult =
  BatchDetectSentimentItemResult'
    {_bSentiment = Nothing, _bSentimentScore = Nothing, _bIndex = Nothing}


-- | The sentiment detected in the document.
bSentiment :: Lens' BatchDetectSentimentItemResult (Maybe SentimentType)
bSentiment = lens _bSentiment (\ s a -> s{_bSentiment = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of its sentiment detection.
bSentimentScore :: Lens' BatchDetectSentimentItemResult (Maybe SentimentScore)
bSentimentScore = lens _bSentimentScore (\ s a -> s{_bSentimentScore = a})

-- | The zero-based index of the document in the input list.
bIndex :: Lens' BatchDetectSentimentItemResult (Maybe Int)
bIndex = lens _bIndex (\ s a -> s{_bIndex = a})

instance FromJSON BatchDetectSentimentItemResult
         where
        parseJSON
          = withObject "BatchDetectSentimentItemResult"
              (\ x ->
                 BatchDetectSentimentItemResult' <$>
                   (x .:? "Sentiment") <*> (x .:? "SentimentScore") <*>
                     (x .:? "Index"))

instance Hashable BatchDetectSentimentItemResult
         where

instance NFData BatchDetectSentimentItemResult where

-- | The result of calling the operation. The operation returns one object that is successfully processed by the operation.
--
--
--
-- /See:/ 'batchDetectSyntaxItemResult' smart constructor.
data BatchDetectSyntaxItemResult =
  BatchDetectSyntaxItemResult'
    { _bdsirIndex        :: !(Maybe Int)
    , _bdsirSyntaxTokens :: !(Maybe [SyntaxToken])
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDetectSyntaxItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdsirIndex' - The zero-based index of the document in the input list.
--
-- * 'bdsirSyntaxTokens' - The syntax tokens for the words in the document, one token for each word.
batchDetectSyntaxItemResult
    :: BatchDetectSyntaxItemResult
batchDetectSyntaxItemResult =
  BatchDetectSyntaxItemResult'
    {_bdsirIndex = Nothing, _bdsirSyntaxTokens = Nothing}


-- | The zero-based index of the document in the input list.
bdsirIndex :: Lens' BatchDetectSyntaxItemResult (Maybe Int)
bdsirIndex = lens _bdsirIndex (\ s a -> s{_bdsirIndex = a})

-- | The syntax tokens for the words in the document, one token for each word.
bdsirSyntaxTokens :: Lens' BatchDetectSyntaxItemResult [SyntaxToken]
bdsirSyntaxTokens = lens _bdsirSyntaxTokens (\ s a -> s{_bdsirSyntaxTokens = a}) . _Default . _Coerce

instance FromJSON BatchDetectSyntaxItemResult where
        parseJSON
          = withObject "BatchDetectSyntaxItemResult"
              (\ x ->
                 BatchDetectSyntaxItemResult' <$>
                   (x .:? "Index") <*>
                     (x .:? "SyntaxTokens" .!= mempty))

instance Hashable BatchDetectSyntaxItemResult where

instance NFData BatchDetectSyntaxItemResult where

-- | Describes an error that occurred while processing a document in a batch. The operation returns on @BatchItemError@ object for each document that contained an error.
--
--
--
-- /See:/ 'batchItemError' smart constructor.
data BatchItemError =
  BatchItemError'
    { _bieErrorCode    :: !(Maybe Text)
    , _bieErrorMessage :: !(Maybe Text)
    , _bieIndex        :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchItemError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bieErrorCode' - The numeric error code of the error.
--
-- * 'bieErrorMessage' - A text description of the error.
--
-- * 'bieIndex' - The zero-based index of the document in the input list.
batchItemError
    :: BatchItemError
batchItemError =
  BatchItemError'
    {_bieErrorCode = Nothing, _bieErrorMessage = Nothing, _bieIndex = Nothing}


-- | The numeric error code of the error.
bieErrorCode :: Lens' BatchItemError (Maybe Text)
bieErrorCode = lens _bieErrorCode (\ s a -> s{_bieErrorCode = a})

-- | A text description of the error.
bieErrorMessage :: Lens' BatchItemError (Maybe Text)
bieErrorMessage = lens _bieErrorMessage (\ s a -> s{_bieErrorMessage = a})

-- | The zero-based index of the document in the input list.
bieIndex :: Lens' BatchItemError (Maybe Int)
bieIndex = lens _bieIndex (\ s a -> s{_bieIndex = a})

instance FromJSON BatchItemError where
        parseJSON
          = withObject "BatchItemError"
              (\ x ->
                 BatchItemError' <$>
                   (x .:? "ErrorCode") <*> (x .:? "ErrorMessage") <*>
                     (x .:? "Index"))

instance Hashable BatchItemError where

instance NFData BatchItemError where

-- | Describes the result metrics for the test data associated with an documentation classifier.
--
--
--
-- /See:/ 'classifierEvaluationMetrics' smart constructor.
data ClassifierEvaluationMetrics =
  ClassifierEvaluationMetrics'
    { _cemMicroPrecision :: !(Maybe Double)
    , _cemMicroF1Score   :: !(Maybe Double)
    , _cemRecall         :: !(Maybe Double)
    , _cemPrecision      :: !(Maybe Double)
    , _cemMicroRecall    :: !(Maybe Double)
    , _cemF1Score        :: !(Maybe Double)
    , _cemHammingLoss    :: !(Maybe Double)
    , _cemAccuracy       :: !(Maybe Double)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClassifierEvaluationMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cemMicroPrecision' - A measure of the usefulness of the recognizer results in the test data. High precision means that the recognizer returned substantially more relevant results than irrelevant ones. Unlike the Precision metric which comes from averaging the precision of all available labels, this is based on the overall score of all precision scores added together.
--
-- * 'cemMicroF1Score' - A measure of how accurate the classifier results are for the test data. It is a combination of the @Micro Precision@ and @Micro Recall@ values. The @Micro F1Score@ is the harmonic mean of the two scores. The highest score is 1, and the worst score is 0.
--
-- * 'cemRecall' - A measure of how complete the classifier results are for the test data. High recall means that the classifier returned most of the relevant results.
--
-- * 'cemPrecision' - A measure of the usefulness of the classifier results in the test data. High precision means that the classifier returned substantially more relevant results than irrelevant ones.
--
-- * 'cemMicroRecall' - A measure of how complete the classifier results are for the test data. High recall means that the classifier returned most of the relevant results. Specifically, this indicates how many of the correct categories in the text that the model can predict. It is a percentage of correct categories in the text that can found. Instead of averaging the recall scores of all labels (as with Recall), micro Recall is based on the overall score of all recall scores added together.
--
-- * 'cemF1Score' - A measure of how accurate the classifier results are for the test data. It is derived from the @Precision@ and @Recall@ values. The @F1Score@ is the harmonic average of the two scores. The highest score is 1, and the worst score is 0.
--
-- * 'cemHammingLoss' - Indicates the fraction of labels that are incorrectly predicted. Also seen as the fraction of wrong labels compared to the total number of labels. Scores closer to zero are better.
--
-- * 'cemAccuracy' - The fraction of the labels that were correct recognized. It is computed by dividing the number of labels in the test documents that were correctly recognized by the total number of labels in the test documents.
classifierEvaluationMetrics
    :: ClassifierEvaluationMetrics
classifierEvaluationMetrics =
  ClassifierEvaluationMetrics'
    { _cemMicroPrecision = Nothing
    , _cemMicroF1Score = Nothing
    , _cemRecall = Nothing
    , _cemPrecision = Nothing
    , _cemMicroRecall = Nothing
    , _cemF1Score = Nothing
    , _cemHammingLoss = Nothing
    , _cemAccuracy = Nothing
    }


-- | A measure of the usefulness of the recognizer results in the test data. High precision means that the recognizer returned substantially more relevant results than irrelevant ones. Unlike the Precision metric which comes from averaging the precision of all available labels, this is based on the overall score of all precision scores added together.
cemMicroPrecision :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemMicroPrecision = lens _cemMicroPrecision (\ s a -> s{_cemMicroPrecision = a})

-- | A measure of how accurate the classifier results are for the test data. It is a combination of the @Micro Precision@ and @Micro Recall@ values. The @Micro F1Score@ is the harmonic mean of the two scores. The highest score is 1, and the worst score is 0.
cemMicroF1Score :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemMicroF1Score = lens _cemMicroF1Score (\ s a -> s{_cemMicroF1Score = a})

-- | A measure of how complete the classifier results are for the test data. High recall means that the classifier returned most of the relevant results.
cemRecall :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemRecall = lens _cemRecall (\ s a -> s{_cemRecall = a})

-- | A measure of the usefulness of the classifier results in the test data. High precision means that the classifier returned substantially more relevant results than irrelevant ones.
cemPrecision :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemPrecision = lens _cemPrecision (\ s a -> s{_cemPrecision = a})

-- | A measure of how complete the classifier results are for the test data. High recall means that the classifier returned most of the relevant results. Specifically, this indicates how many of the correct categories in the text that the model can predict. It is a percentage of correct categories in the text that can found. Instead of averaging the recall scores of all labels (as with Recall), micro Recall is based on the overall score of all recall scores added together.
cemMicroRecall :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemMicroRecall = lens _cemMicroRecall (\ s a -> s{_cemMicroRecall = a})

-- | A measure of how accurate the classifier results are for the test data. It is derived from the @Precision@ and @Recall@ values. The @F1Score@ is the harmonic average of the two scores. The highest score is 1, and the worst score is 0.
cemF1Score :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemF1Score = lens _cemF1Score (\ s a -> s{_cemF1Score = a})

-- | Indicates the fraction of labels that are incorrectly predicted. Also seen as the fraction of wrong labels compared to the total number of labels. Scores closer to zero are better.
cemHammingLoss :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemHammingLoss = lens _cemHammingLoss (\ s a -> s{_cemHammingLoss = a})

-- | The fraction of the labels that were correct recognized. It is computed by dividing the number of labels in the test documents that were correctly recognized by the total number of labels in the test documents.
cemAccuracy :: Lens' ClassifierEvaluationMetrics (Maybe Double)
cemAccuracy = lens _cemAccuracy (\ s a -> s{_cemAccuracy = a})

instance FromJSON ClassifierEvaluationMetrics where
        parseJSON
          = withObject "ClassifierEvaluationMetrics"
              (\ x ->
                 ClassifierEvaluationMetrics' <$>
                   (x .:? "MicroPrecision") <*> (x .:? "MicroF1Score")
                     <*> (x .:? "Recall")
                     <*> (x .:? "Precision")
                     <*> (x .:? "MicroRecall")
                     <*> (x .:? "F1Score")
                     <*> (x .:? "HammingLoss")
                     <*> (x .:? "Accuracy"))

instance Hashable ClassifierEvaluationMetrics where

instance NFData ClassifierEvaluationMetrics where

-- | Provides information about a document classifier.
--
--
--
-- /See:/ 'classifierMetadata' smart constructor.
data ClassifierMetadata =
  ClassifierMetadata'
    { _cmNumberOfLabels           :: !(Maybe Int)
    , _cmEvaluationMetrics        :: !(Maybe ClassifierEvaluationMetrics)
    , _cmNumberOfTrainedDocuments :: !(Maybe Int)
    , _cmNumberOfTestDocuments    :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClassifierMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmNumberOfLabels' - The number of labels in the input data.
--
-- * 'cmEvaluationMetrics' - Describes the result metrics for the test data associated with an documentation classifier.
--
-- * 'cmNumberOfTrainedDocuments' - The number of documents in the input data that were used to train the classifier. Typically this is 80 to 90 percent of the input documents.
--
-- * 'cmNumberOfTestDocuments' - The number of documents in the input data that were used to test the classifier. Typically this is 10 to 20 percent of the input documents.
classifierMetadata
    :: ClassifierMetadata
classifierMetadata =
  ClassifierMetadata'
    { _cmNumberOfLabels = Nothing
    , _cmEvaluationMetrics = Nothing
    , _cmNumberOfTrainedDocuments = Nothing
    , _cmNumberOfTestDocuments = Nothing
    }


-- | The number of labels in the input data.
cmNumberOfLabels :: Lens' ClassifierMetadata (Maybe Int)
cmNumberOfLabels = lens _cmNumberOfLabels (\ s a -> s{_cmNumberOfLabels = a})

-- | Describes the result metrics for the test data associated with an documentation classifier.
cmEvaluationMetrics :: Lens' ClassifierMetadata (Maybe ClassifierEvaluationMetrics)
cmEvaluationMetrics = lens _cmEvaluationMetrics (\ s a -> s{_cmEvaluationMetrics = a})

-- | The number of documents in the input data that were used to train the classifier. Typically this is 80 to 90 percent of the input documents.
cmNumberOfTrainedDocuments :: Lens' ClassifierMetadata (Maybe Int)
cmNumberOfTrainedDocuments = lens _cmNumberOfTrainedDocuments (\ s a -> s{_cmNumberOfTrainedDocuments = a})

-- | The number of documents in the input data that were used to test the classifier. Typically this is 10 to 20 percent of the input documents.
cmNumberOfTestDocuments :: Lens' ClassifierMetadata (Maybe Int)
cmNumberOfTestDocuments = lens _cmNumberOfTestDocuments (\ s a -> s{_cmNumberOfTestDocuments = a})

instance FromJSON ClassifierMetadata where
        parseJSON
          = withObject "ClassifierMetadata"
              (\ x ->
                 ClassifierMetadata' <$>
                   (x .:? "NumberOfLabels") <*>
                     (x .:? "EvaluationMetrics")
                     <*> (x .:? "NumberOfTrainedDocuments")
                     <*> (x .:? "NumberOfTestDocuments"))

instance Hashable ClassifierMetadata where

instance NFData ClassifierMetadata where

-- | Specifies the class that categorizes the document being analyzed
--
--
--
-- /See:/ 'documentClass' smart constructor.
data DocumentClass =
  DocumentClass'
    { _dcScore :: !(Maybe Double)
    , _dcName  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentClass' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcScore' - The confidence score that Amazon Comprehend has this class correctly attributed.
--
-- * 'dcName' - The name of the class.
documentClass
    :: DocumentClass
documentClass = DocumentClass' {_dcScore = Nothing, _dcName = Nothing}


-- | The confidence score that Amazon Comprehend has this class correctly attributed.
dcScore :: Lens' DocumentClass (Maybe Double)
dcScore = lens _dcScore (\ s a -> s{_dcScore = a})

-- | The name of the class.
dcName :: Lens' DocumentClass (Maybe Text)
dcName = lens _dcName (\ s a -> s{_dcName = a})

instance FromJSON DocumentClass where
        parseJSON
          = withObject "DocumentClass"
              (\ x ->
                 DocumentClass' <$>
                   (x .:? "Score") <*> (x .:? "Name"))

instance Hashable DocumentClass where

instance NFData DocumentClass where

-- | Provides information for filtering a list of document classification jobs. For more information, see the operation. You can provide only one filter parameter in each request.
--
--
--
-- /See:/ 'documentClassificationJobFilter' smart constructor.
data DocumentClassificationJobFilter =
  DocumentClassificationJobFilter'
    { _dcjfSubmitTimeAfter  :: !(Maybe POSIX)
    , _dcjfSubmitTimeBefore :: !(Maybe POSIX)
    , _dcjfJobName          :: !(Maybe Text)
    , _dcjfJobStatus        :: !(Maybe JobStatus)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentClassificationJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'dcjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'dcjfJobName' - Filters on the name of the job.
--
-- * 'dcjfJobStatus' - Filters the list based on job status. Returns only jobs with the specified status.
documentClassificationJobFilter
    :: DocumentClassificationJobFilter
documentClassificationJobFilter =
  DocumentClassificationJobFilter'
    { _dcjfSubmitTimeAfter = Nothing
    , _dcjfSubmitTimeBefore = Nothing
    , _dcjfJobName = Nothing
    , _dcjfJobStatus = Nothing
    }


-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.
dcjfSubmitTimeAfter :: Lens' DocumentClassificationJobFilter (Maybe UTCTime)
dcjfSubmitTimeAfter = lens _dcjfSubmitTimeAfter (\ s a -> s{_dcjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.
dcjfSubmitTimeBefore :: Lens' DocumentClassificationJobFilter (Maybe UTCTime)
dcjfSubmitTimeBefore = lens _dcjfSubmitTimeBefore (\ s a -> s{_dcjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters on the name of the job.
dcjfJobName :: Lens' DocumentClassificationJobFilter (Maybe Text)
dcjfJobName = lens _dcjfJobName (\ s a -> s{_dcjfJobName = a})

-- | Filters the list based on job status. Returns only jobs with the specified status.
dcjfJobStatus :: Lens' DocumentClassificationJobFilter (Maybe JobStatus)
dcjfJobStatus = lens _dcjfJobStatus (\ s a -> s{_dcjfJobStatus = a})

instance Hashable DocumentClassificationJobFilter
         where

instance NFData DocumentClassificationJobFilter where

instance ToJSON DocumentClassificationJobFilter where
        toJSON DocumentClassificationJobFilter'{..}
          = object
              (catMaybes
                 [("SubmitTimeAfter" .=) <$> _dcjfSubmitTimeAfter,
                  ("SubmitTimeBefore" .=) <$> _dcjfSubmitTimeBefore,
                  ("JobName" .=) <$> _dcjfJobName,
                  ("JobStatus" .=) <$> _dcjfJobStatus])

-- | Provides information about a document classification job.
--
--
--
-- /See:/ 'documentClassificationJobProperties' smart constructor.
data DocumentClassificationJobProperties =
  DocumentClassificationJobProperties'
    { _dcjpJobId                 :: !(Maybe Text)
    , _dcjpDocumentClassifierARN :: !(Maybe Text)
    , _dcjpJobName               :: !(Maybe Text)
    , _dcjpInputDataConfig       :: !(Maybe InputDataConfig)
    , _dcjpVPCConfig             :: !(Maybe VPCConfig)
    , _dcjpVolumeKMSKeyId        :: !(Maybe Text)
    , _dcjpEndTime               :: !(Maybe POSIX)
    , _dcjpOutputDataConfig      :: !(Maybe OutputDataConfig)
    , _dcjpDataAccessRoleARN     :: !(Maybe Text)
    , _dcjpJobStatus             :: !(Maybe JobStatus)
    , _dcjpMessage               :: !(Maybe Text)
    , _dcjpSubmitTime            :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentClassificationJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcjpJobId' - The identifier assigned to the document classification job.
--
-- * 'dcjpDocumentClassifierARN' - The Amazon Resource Name (ARN) that identifies the document classifier.
--
-- * 'dcjpJobName' - The name that you assigned to the document classification job.
--
-- * 'dcjpInputDataConfig' - The input data configuration that you supplied when you created the document classification job.
--
-- * 'dcjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your document classification job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'dcjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'dcjpEndTime' - The time that the document classification job completed.
--
-- * 'dcjpOutputDataConfig' - The output data configuration that you supplied when you created the document classification job.
--
-- * 'dcjpDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data.
--
-- * 'dcjpJobStatus' - The current status of the document classification job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- * 'dcjpMessage' - A description of the status of the job.
--
-- * 'dcjpSubmitTime' - The time that the document classification job was submitted for processing.
documentClassificationJobProperties
    :: DocumentClassificationJobProperties
documentClassificationJobProperties =
  DocumentClassificationJobProperties'
    { _dcjpJobId = Nothing
    , _dcjpDocumentClassifierARN = Nothing
    , _dcjpJobName = Nothing
    , _dcjpInputDataConfig = Nothing
    , _dcjpVPCConfig = Nothing
    , _dcjpVolumeKMSKeyId = Nothing
    , _dcjpEndTime = Nothing
    , _dcjpOutputDataConfig = Nothing
    , _dcjpDataAccessRoleARN = Nothing
    , _dcjpJobStatus = Nothing
    , _dcjpMessage = Nothing
    , _dcjpSubmitTime = Nothing
    }


-- | The identifier assigned to the document classification job.
dcjpJobId :: Lens' DocumentClassificationJobProperties (Maybe Text)
dcjpJobId = lens _dcjpJobId (\ s a -> s{_dcjpJobId = a})

-- | The Amazon Resource Name (ARN) that identifies the document classifier.
dcjpDocumentClassifierARN :: Lens' DocumentClassificationJobProperties (Maybe Text)
dcjpDocumentClassifierARN = lens _dcjpDocumentClassifierARN (\ s a -> s{_dcjpDocumentClassifierARN = a})

-- | The name that you assigned to the document classification job.
dcjpJobName :: Lens' DocumentClassificationJobProperties (Maybe Text)
dcjpJobName = lens _dcjpJobName (\ s a -> s{_dcjpJobName = a})

-- | The input data configuration that you supplied when you created the document classification job.
dcjpInputDataConfig :: Lens' DocumentClassificationJobProperties (Maybe InputDataConfig)
dcjpInputDataConfig = lens _dcjpInputDataConfig (\ s a -> s{_dcjpInputDataConfig = a})

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your document classification job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
dcjpVPCConfig :: Lens' DocumentClassificationJobProperties (Maybe VPCConfig)
dcjpVPCConfig = lens _dcjpVPCConfig (\ s a -> s{_dcjpVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
dcjpVolumeKMSKeyId :: Lens' DocumentClassificationJobProperties (Maybe Text)
dcjpVolumeKMSKeyId = lens _dcjpVolumeKMSKeyId (\ s a -> s{_dcjpVolumeKMSKeyId = a})

-- | The time that the document classification job completed.
dcjpEndTime :: Lens' DocumentClassificationJobProperties (Maybe UTCTime)
dcjpEndTime = lens _dcjpEndTime (\ s a -> s{_dcjpEndTime = a}) . mapping _Time

-- | The output data configuration that you supplied when you created the document classification job.
dcjpOutputDataConfig :: Lens' DocumentClassificationJobProperties (Maybe OutputDataConfig)
dcjpOutputDataConfig = lens _dcjpOutputDataConfig (\ s a -> s{_dcjpOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) of the AWS identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data.
dcjpDataAccessRoleARN :: Lens' DocumentClassificationJobProperties (Maybe Text)
dcjpDataAccessRoleARN = lens _dcjpDataAccessRoleARN (\ s a -> s{_dcjpDataAccessRoleARN = a})

-- | The current status of the document classification job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
dcjpJobStatus :: Lens' DocumentClassificationJobProperties (Maybe JobStatus)
dcjpJobStatus = lens _dcjpJobStatus (\ s a -> s{_dcjpJobStatus = a})

-- | A description of the status of the job.
dcjpMessage :: Lens' DocumentClassificationJobProperties (Maybe Text)
dcjpMessage = lens _dcjpMessage (\ s a -> s{_dcjpMessage = a})

-- | The time that the document classification job was submitted for processing.
dcjpSubmitTime :: Lens' DocumentClassificationJobProperties (Maybe UTCTime)
dcjpSubmitTime = lens _dcjpSubmitTime (\ s a -> s{_dcjpSubmitTime = a}) . mapping _Time

instance FromJSON DocumentClassificationJobProperties
         where
        parseJSON
          = withObject "DocumentClassificationJobProperties"
              (\ x ->
                 DocumentClassificationJobProperties' <$>
                   (x .:? "JobId") <*> (x .:? "DocumentClassifierArn")
                     <*> (x .:? "JobName")
                     <*> (x .:? "InputDataConfig")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "VolumeKmsKeyId")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "OutputDataConfig")
                     <*> (x .:? "DataAccessRoleArn")
                     <*> (x .:? "JobStatus")
                     <*> (x .:? "Message")
                     <*> (x .:? "SubmitTime"))

instance Hashable DocumentClassificationJobProperties
         where

instance NFData DocumentClassificationJobProperties
         where

-- | Provides information for filtering a list of document classifiers. You can only specify one filtering parameter in a request. For more information, see the operation.
--
--
--
-- /See:/ 'documentClassifierFilter' smart constructor.
data DocumentClassifierFilter =
  DocumentClassifierFilter'
    { _dcfStatus           :: !(Maybe ModelStatus)
    , _dcfSubmitTimeAfter  :: !(Maybe POSIX)
    , _dcfSubmitTimeBefore :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentClassifierFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfStatus' - Filters the list of classifiers based on status.
--
-- * 'dcfSubmitTimeAfter' - Filters the list of classifiers based on the time that the classifier was submitted for processing. Returns only classifiers submitted after the specified time. Classifiers are returned in descending order, newest to oldest.
--
-- * 'dcfSubmitTimeBefore' - Filters the list of classifiers based on the time that the classifier was submitted for processing. Returns only classifiers submitted before the specified time. Classifiers are returned in ascending order, oldest to newest.
documentClassifierFilter
    :: DocumentClassifierFilter
documentClassifierFilter =
  DocumentClassifierFilter'
    { _dcfStatus = Nothing
    , _dcfSubmitTimeAfter = Nothing
    , _dcfSubmitTimeBefore = Nothing
    }


-- | Filters the list of classifiers based on status.
dcfStatus :: Lens' DocumentClassifierFilter (Maybe ModelStatus)
dcfStatus = lens _dcfStatus (\ s a -> s{_dcfStatus = a})

-- | Filters the list of classifiers based on the time that the classifier was submitted for processing. Returns only classifiers submitted after the specified time. Classifiers are returned in descending order, newest to oldest.
dcfSubmitTimeAfter :: Lens' DocumentClassifierFilter (Maybe UTCTime)
dcfSubmitTimeAfter = lens _dcfSubmitTimeAfter (\ s a -> s{_dcfSubmitTimeAfter = a}) . mapping _Time

-- | Filters the list of classifiers based on the time that the classifier was submitted for processing. Returns only classifiers submitted before the specified time. Classifiers are returned in ascending order, oldest to newest.
dcfSubmitTimeBefore :: Lens' DocumentClassifierFilter (Maybe UTCTime)
dcfSubmitTimeBefore = lens _dcfSubmitTimeBefore (\ s a -> s{_dcfSubmitTimeBefore = a}) . mapping _Time

instance Hashable DocumentClassifierFilter where

instance NFData DocumentClassifierFilter where

instance ToJSON DocumentClassifierFilter where
        toJSON DocumentClassifierFilter'{..}
          = object
              (catMaybes
                 [("Status" .=) <$> _dcfStatus,
                  ("SubmitTimeAfter" .=) <$> _dcfSubmitTimeAfter,
                  ("SubmitTimeBefore" .=) <$> _dcfSubmitTimeBefore])

-- | The input properties for training a document classifier.
--
--
-- For more information on how the input file is formatted, see 'how-document-classification-training-data' .
--
--
-- /See:/ 'documentClassifierInputDataConfig' smart constructor.
data DocumentClassifierInputDataConfig =
  DocumentClassifierInputDataConfig'
    { _dcidcLabelDelimiter :: !(Maybe Text)
    , _dcidcS3URI          :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentClassifierInputDataConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcidcLabelDelimiter' - Indicates the delimiter used to separate each label for training a multi-label classifier. The default delimiter between labels is a pipe (|). You can use a different character as a delimiter (if it's an allowed character) by specifying it under Delimiter for labels. If the training documents use a delimiter other than the default or the delimiter you specify, the labels on that line will be combined to make a single unique label, such as LABELLABELLABEL.
--
-- * 'dcidcS3URI' - The Amazon S3 URI for the input data. The S3 bucket must be in the same region as the API endpoint that you are calling. The URI can point to a single input file or it can provide the prefix for a collection of input files. For example, if you use the URI @S3://bucketName/prefix@ , if the prefix is a single file, Amazon Comprehend uses that file as input. If more than one file begins with the prefix, Amazon Comprehend uses all of them as input.
documentClassifierInputDataConfig
    :: Text -- ^ 'dcidcS3URI'
    -> DocumentClassifierInputDataConfig
documentClassifierInputDataConfig pS3URI_ =
  DocumentClassifierInputDataConfig'
    {_dcidcLabelDelimiter = Nothing, _dcidcS3URI = pS3URI_}


-- | Indicates the delimiter used to separate each label for training a multi-label classifier. The default delimiter between labels is a pipe (|). You can use a different character as a delimiter (if it's an allowed character) by specifying it under Delimiter for labels. If the training documents use a delimiter other than the default or the delimiter you specify, the labels on that line will be combined to make a single unique label, such as LABELLABELLABEL.
dcidcLabelDelimiter :: Lens' DocumentClassifierInputDataConfig (Maybe Text)
dcidcLabelDelimiter = lens _dcidcLabelDelimiter (\ s a -> s{_dcidcLabelDelimiter = a})

-- | The Amazon S3 URI for the input data. The S3 bucket must be in the same region as the API endpoint that you are calling. The URI can point to a single input file or it can provide the prefix for a collection of input files. For example, if you use the URI @S3://bucketName/prefix@ , if the prefix is a single file, Amazon Comprehend uses that file as input. If more than one file begins with the prefix, Amazon Comprehend uses all of them as input.
dcidcS3URI :: Lens' DocumentClassifierInputDataConfig Text
dcidcS3URI = lens _dcidcS3URI (\ s a -> s{_dcidcS3URI = a})

instance FromJSON DocumentClassifierInputDataConfig
         where
        parseJSON
          = withObject "DocumentClassifierInputDataConfig"
              (\ x ->
                 DocumentClassifierInputDataConfig' <$>
                   (x .:? "LabelDelimiter") <*> (x .: "S3Uri"))

instance Hashable DocumentClassifierInputDataConfig
         where

instance NFData DocumentClassifierInputDataConfig
         where

instance ToJSON DocumentClassifierInputDataConfig
         where
        toJSON DocumentClassifierInputDataConfig'{..}
          = object
              (catMaybes
                 [("LabelDelimiter" .=) <$> _dcidcLabelDelimiter,
                  Just ("S3Uri" .= _dcidcS3URI)])

-- | Provides output results configuration parameters for custom classifier jobs.
--
--
--
-- /See:/ 'documentClassifierOutputDataConfig' smart constructor.
data DocumentClassifierOutputDataConfig =
  DocumentClassifierOutputDataConfig'
    { _dcodcKMSKeyId :: !(Maybe Text)
    , _dcodcS3URI    :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentClassifierOutputDataConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcodcKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the output results from an analysis job. The KmsKeyId can be one of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@      * KMS Key Alias: @"alias/ExampleAlias"@      * ARN of a KMS Key Alias: @"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"@
--
-- * 'dcodcS3URI' - When you use the @OutputDataConfig@ object while creating a custom classifier, you specify the Amazon S3 location where you want to write the confusion matrix. The URI must be in the same region as the API endpoint that you are calling. The location is used as the prefix for the actual location of this output file. When the custom classifier job is finished, the service creates the output file in a directory specific to the job. The @S3Uri@ field contains the location of the output file, called @output.tar.gz@ . It is a compressed archive that contains the confusion matrix.
documentClassifierOutputDataConfig
    :: DocumentClassifierOutputDataConfig
documentClassifierOutputDataConfig =
  DocumentClassifierOutputDataConfig'
    {_dcodcKMSKeyId = Nothing, _dcodcS3URI = Nothing}


-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the output results from an analysis job. The KmsKeyId can be one of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@      * KMS Key Alias: @"alias/ExampleAlias"@      * ARN of a KMS Key Alias: @"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"@
dcodcKMSKeyId :: Lens' DocumentClassifierOutputDataConfig (Maybe Text)
dcodcKMSKeyId = lens _dcodcKMSKeyId (\ s a -> s{_dcodcKMSKeyId = a})

-- | When you use the @OutputDataConfig@ object while creating a custom classifier, you specify the Amazon S3 location where you want to write the confusion matrix. The URI must be in the same region as the API endpoint that you are calling. The location is used as the prefix for the actual location of this output file. When the custom classifier job is finished, the service creates the output file in a directory specific to the job. The @S3Uri@ field contains the location of the output file, called @output.tar.gz@ . It is a compressed archive that contains the confusion matrix.
dcodcS3URI :: Lens' DocumentClassifierOutputDataConfig (Maybe Text)
dcodcS3URI = lens _dcodcS3URI (\ s a -> s{_dcodcS3URI = a})

instance FromJSON DocumentClassifierOutputDataConfig
         where
        parseJSON
          = withObject "DocumentClassifierOutputDataConfig"
              (\ x ->
                 DocumentClassifierOutputDataConfig' <$>
                   (x .:? "KmsKeyId") <*> (x .:? "S3Uri"))

instance Hashable DocumentClassifierOutputDataConfig
         where

instance NFData DocumentClassifierOutputDataConfig
         where

instance ToJSON DocumentClassifierOutputDataConfig
         where
        toJSON DocumentClassifierOutputDataConfig'{..}
          = object
              (catMaybes
                 [("KmsKeyId" .=) <$> _dcodcKMSKeyId,
                  ("S3Uri" .=) <$> _dcodcS3URI])

-- | Provides information about a document classifier.
--
--
--
-- /See:/ 'documentClassifierProperties' smart constructor.
data DocumentClassifierProperties =
  DocumentClassifierProperties'
    { _dcpStatus                :: !(Maybe ModelStatus)
    , _dcpLanguageCode          :: !(Maybe LanguageCode)
    , _dcpClassifierMetadata    :: !(Maybe ClassifierMetadata)
    , _dcpTrainingEndTime       :: !(Maybe POSIX)
    , _dcpDocumentClassifierARN :: !(Maybe Text)
    , _dcpMode                  :: !(Maybe DocumentClassifierMode)
    , _dcpInputDataConfig       :: !(Maybe DocumentClassifierInputDataConfig)
    , _dcpVPCConfig             :: !(Maybe VPCConfig)
    , _dcpVolumeKMSKeyId        :: !(Maybe Text)
    , _dcpEndTime               :: !(Maybe POSIX)
    , _dcpOutputDataConfig      :: !(Maybe DocumentClassifierOutputDataConfig)
    , _dcpTrainingStartTime     :: !(Maybe POSIX)
    , _dcpDataAccessRoleARN     :: !(Maybe Text)
    , _dcpMessage               :: !(Maybe Text)
    , _dcpSubmitTime            :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentClassifierProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpStatus' - The status of the document classifier. If the status is @TRAINED@ the classifier is ready to use. If the status is @FAILED@ you can see additional information about why the classifier wasn't trained in the @Message@ field.
--
-- * 'dcpLanguageCode' - The language code for the language of the documents that the classifier was trained on.
--
-- * 'dcpClassifierMetadata' - Information about the document classifier, including the number of documents used for training the classifier, the number of documents used for test the classifier, and an accuracy rating.
--
-- * 'dcpTrainingEndTime' - The time that training of the document classifier was completed. Indicates the time when the training completes on documentation classifiers. You are billed for the time interval between this time and the value of TrainingStartTime.
--
-- * 'dcpDocumentClassifierARN' - The Amazon Resource Name (ARN) that identifies the document classifier.
--
-- * 'dcpMode' - Indicates the mode in which the specific classifier was trained. This also indicates the format of input documents and the format of the confusion matrix. Each classifier can only be trained in one mode and this cannot be changed once the classifier is trained.
--
-- * 'dcpInputDataConfig' - The input data configuration that you supplied when you created the document classifier for training.
--
-- * 'dcpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your custom classifier. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'dcpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'dcpEndTime' - The time that training the document classifier completed.
--
-- * 'dcpOutputDataConfig' - Provides output results configuration parameters for custom classifier jobs.
--
-- * 'dcpTrainingStartTime' - Indicates the time when the training starts on documentation classifiers. You are billed for the time interval between this time and the value of TrainingEndTime.
--
-- * 'dcpDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your input data.
--
-- * 'dcpMessage' - Additional information about the status of the classifier.
--
-- * 'dcpSubmitTime' - The time that the document classifier was submitted for training.
documentClassifierProperties
    :: DocumentClassifierProperties
documentClassifierProperties =
  DocumentClassifierProperties'
    { _dcpStatus = Nothing
    , _dcpLanguageCode = Nothing
    , _dcpClassifierMetadata = Nothing
    , _dcpTrainingEndTime = Nothing
    , _dcpDocumentClassifierARN = Nothing
    , _dcpMode = Nothing
    , _dcpInputDataConfig = Nothing
    , _dcpVPCConfig = Nothing
    , _dcpVolumeKMSKeyId = Nothing
    , _dcpEndTime = Nothing
    , _dcpOutputDataConfig = Nothing
    , _dcpTrainingStartTime = Nothing
    , _dcpDataAccessRoleARN = Nothing
    , _dcpMessage = Nothing
    , _dcpSubmitTime = Nothing
    }


-- | The status of the document classifier. If the status is @TRAINED@ the classifier is ready to use. If the status is @FAILED@ you can see additional information about why the classifier wasn't trained in the @Message@ field.
dcpStatus :: Lens' DocumentClassifierProperties (Maybe ModelStatus)
dcpStatus = lens _dcpStatus (\ s a -> s{_dcpStatus = a})

-- | The language code for the language of the documents that the classifier was trained on.
dcpLanguageCode :: Lens' DocumentClassifierProperties (Maybe LanguageCode)
dcpLanguageCode = lens _dcpLanguageCode (\ s a -> s{_dcpLanguageCode = a})

-- | Information about the document classifier, including the number of documents used for training the classifier, the number of documents used for test the classifier, and an accuracy rating.
dcpClassifierMetadata :: Lens' DocumentClassifierProperties (Maybe ClassifierMetadata)
dcpClassifierMetadata = lens _dcpClassifierMetadata (\ s a -> s{_dcpClassifierMetadata = a})

-- | The time that training of the document classifier was completed. Indicates the time when the training completes on documentation classifiers. You are billed for the time interval between this time and the value of TrainingStartTime.
dcpTrainingEndTime :: Lens' DocumentClassifierProperties (Maybe UTCTime)
dcpTrainingEndTime = lens _dcpTrainingEndTime (\ s a -> s{_dcpTrainingEndTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) that identifies the document classifier.
dcpDocumentClassifierARN :: Lens' DocumentClassifierProperties (Maybe Text)
dcpDocumentClassifierARN = lens _dcpDocumentClassifierARN (\ s a -> s{_dcpDocumentClassifierARN = a})

-- | Indicates the mode in which the specific classifier was trained. This also indicates the format of input documents and the format of the confusion matrix. Each classifier can only be trained in one mode and this cannot be changed once the classifier is trained.
dcpMode :: Lens' DocumentClassifierProperties (Maybe DocumentClassifierMode)
dcpMode = lens _dcpMode (\ s a -> s{_dcpMode = a})

-- | The input data configuration that you supplied when you created the document classifier for training.
dcpInputDataConfig :: Lens' DocumentClassifierProperties (Maybe DocumentClassifierInputDataConfig)
dcpInputDataConfig = lens _dcpInputDataConfig (\ s a -> s{_dcpInputDataConfig = a})

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your custom classifier. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
dcpVPCConfig :: Lens' DocumentClassifierProperties (Maybe VPCConfig)
dcpVPCConfig = lens _dcpVPCConfig (\ s a -> s{_dcpVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
dcpVolumeKMSKeyId :: Lens' DocumentClassifierProperties (Maybe Text)
dcpVolumeKMSKeyId = lens _dcpVolumeKMSKeyId (\ s a -> s{_dcpVolumeKMSKeyId = a})

-- | The time that training the document classifier completed.
dcpEndTime :: Lens' DocumentClassifierProperties (Maybe UTCTime)
dcpEndTime = lens _dcpEndTime (\ s a -> s{_dcpEndTime = a}) . mapping _Time

-- | Provides output results configuration parameters for custom classifier jobs.
dcpOutputDataConfig :: Lens' DocumentClassifierProperties (Maybe DocumentClassifierOutputDataConfig)
dcpOutputDataConfig = lens _dcpOutputDataConfig (\ s a -> s{_dcpOutputDataConfig = a})

-- | Indicates the time when the training starts on documentation classifiers. You are billed for the time interval between this time and the value of TrainingEndTime.
dcpTrainingStartTime :: Lens' DocumentClassifierProperties (Maybe UTCTime)
dcpTrainingStartTime = lens _dcpTrainingStartTime (\ s a -> s{_dcpTrainingStartTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your input data.
dcpDataAccessRoleARN :: Lens' DocumentClassifierProperties (Maybe Text)
dcpDataAccessRoleARN = lens _dcpDataAccessRoleARN (\ s a -> s{_dcpDataAccessRoleARN = a})

-- | Additional information about the status of the classifier.
dcpMessage :: Lens' DocumentClassifierProperties (Maybe Text)
dcpMessage = lens _dcpMessage (\ s a -> s{_dcpMessage = a})

-- | The time that the document classifier was submitted for training.
dcpSubmitTime :: Lens' DocumentClassifierProperties (Maybe UTCTime)
dcpSubmitTime = lens _dcpSubmitTime (\ s a -> s{_dcpSubmitTime = a}) . mapping _Time

instance FromJSON DocumentClassifierProperties where
        parseJSON
          = withObject "DocumentClassifierProperties"
              (\ x ->
                 DocumentClassifierProperties' <$>
                   (x .:? "Status") <*> (x .:? "LanguageCode") <*>
                     (x .:? "ClassifierMetadata")
                     <*> (x .:? "TrainingEndTime")
                     <*> (x .:? "DocumentClassifierArn")
                     <*> (x .:? "Mode")
                     <*> (x .:? "InputDataConfig")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "VolumeKmsKeyId")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "OutputDataConfig")
                     <*> (x .:? "TrainingStartTime")
                     <*> (x .:? "DataAccessRoleArn")
                     <*> (x .:? "Message")
                     <*> (x .:? "SubmitTime"))

instance Hashable DocumentClassifierProperties where

instance NFData DocumentClassifierProperties where

-- | Specifies one of the label or labels that categorize the document being analyzed.
--
--
--
-- /See:/ 'documentLabel' smart constructor.
data DocumentLabel =
  DocumentLabel'
    { _dScore :: !(Maybe Double)
    , _dName  :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DocumentLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dScore' - The confidence score that Amazon Comprehend has this label correctly attributed.
--
-- * 'dName' - The name of the label.
documentLabel
    :: DocumentLabel
documentLabel = DocumentLabel' {_dScore = Nothing, _dName = Nothing}


-- | The confidence score that Amazon Comprehend has this label correctly attributed.
dScore :: Lens' DocumentLabel (Maybe Double)
dScore = lens _dScore (\ s a -> s{_dScore = a})

-- | The name of the label.
dName :: Lens' DocumentLabel (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

instance FromJSON DocumentLabel where
        parseJSON
          = withObject "DocumentLabel"
              (\ x ->
                 DocumentLabel' <$>
                   (x .:? "Score") <*> (x .:? "Name"))

instance Hashable DocumentLabel where

instance NFData DocumentLabel where

-- | Returns the code for the dominant language in the input text and the level of confidence that Amazon Comprehend has in the accuracy of the detection.
--
--
--
-- /See:/ 'dominantLanguage' smart constructor.
data DominantLanguage =
  DominantLanguage'
    { _dlLanguageCode :: !(Maybe Text)
    , _dlScore        :: !(Maybe Double)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DominantLanguage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlLanguageCode' - The RFC 5646 language code for the dominant language. For more information about RFC 5646, see <https://tools.ietf.org/html/rfc5646 Tags for Identifying Languages> on the /IETF Tools/ web site.
--
-- * 'dlScore' - The level of confidence that Amazon Comprehend has in the accuracy of the detection.
dominantLanguage
    :: DominantLanguage
dominantLanguage =
  DominantLanguage' {_dlLanguageCode = Nothing, _dlScore = Nothing}


-- | The RFC 5646 language code for the dominant language. For more information about RFC 5646, see <https://tools.ietf.org/html/rfc5646 Tags for Identifying Languages> on the /IETF Tools/ web site.
dlLanguageCode :: Lens' DominantLanguage (Maybe Text)
dlLanguageCode = lens _dlLanguageCode (\ s a -> s{_dlLanguageCode = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of the detection.
dlScore :: Lens' DominantLanguage (Maybe Double)
dlScore = lens _dlScore (\ s a -> s{_dlScore = a})

instance FromJSON DominantLanguage where
        parseJSON
          = withObject "DominantLanguage"
              (\ x ->
                 DominantLanguage' <$>
                   (x .:? "LanguageCode") <*> (x .:? "Score"))

instance Hashable DominantLanguage where

instance NFData DominantLanguage where

-- | Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.
--
--
--
-- /See:/ 'dominantLanguageDetectionJobFilter' smart constructor.
data DominantLanguageDetectionJobFilter =
  DominantLanguageDetectionJobFilter'
    { _dldjfSubmitTimeAfter  :: !(Maybe POSIX)
    , _dldjfSubmitTimeBefore :: !(Maybe POSIX)
    , _dldjfJobName          :: !(Maybe Text)
    , _dldjfJobStatus        :: !(Maybe JobStatus)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DominantLanguageDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dldjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'dldjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'dldjfJobName' - Filters on the name of the job.
--
-- * 'dldjfJobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
dominantLanguageDetectionJobFilter
    :: DominantLanguageDetectionJobFilter
dominantLanguageDetectionJobFilter =
  DominantLanguageDetectionJobFilter'
    { _dldjfSubmitTimeAfter = Nothing
    , _dldjfSubmitTimeBefore = Nothing
    , _dldjfJobName = Nothing
    , _dldjfJobStatus = Nothing
    }


-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
dldjfSubmitTimeAfter :: Lens' DominantLanguageDetectionJobFilter (Maybe UTCTime)
dldjfSubmitTimeAfter = lens _dldjfSubmitTimeAfter (\ s a -> s{_dldjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
dldjfSubmitTimeBefore :: Lens' DominantLanguageDetectionJobFilter (Maybe UTCTime)
dldjfSubmitTimeBefore = lens _dldjfSubmitTimeBefore (\ s a -> s{_dldjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters on the name of the job.
dldjfJobName :: Lens' DominantLanguageDetectionJobFilter (Maybe Text)
dldjfJobName = lens _dldjfJobName (\ s a -> s{_dldjfJobName = a})

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
dldjfJobStatus :: Lens' DominantLanguageDetectionJobFilter (Maybe JobStatus)
dldjfJobStatus = lens _dldjfJobStatus (\ s a -> s{_dldjfJobStatus = a})

instance Hashable DominantLanguageDetectionJobFilter
         where

instance NFData DominantLanguageDetectionJobFilter
         where

instance ToJSON DominantLanguageDetectionJobFilter
         where
        toJSON DominantLanguageDetectionJobFilter'{..}
          = object
              (catMaybes
                 [("SubmitTimeAfter" .=) <$> _dldjfSubmitTimeAfter,
                  ("SubmitTimeBefore" .=) <$> _dldjfSubmitTimeBefore,
                  ("JobName" .=) <$> _dldjfJobName,
                  ("JobStatus" .=) <$> _dldjfJobStatus])

-- | Provides information about a dominant language detection job.
--
--
--
-- /See:/ 'dominantLanguageDetectionJobProperties' smart constructor.
data DominantLanguageDetectionJobProperties =
  DominantLanguageDetectionJobProperties'
    { _dldjpJobId             :: !(Maybe Text)
    , _dldjpJobName           :: !(Maybe Text)
    , _dldjpInputDataConfig   :: !(Maybe InputDataConfig)
    , _dldjpVPCConfig         :: !(Maybe VPCConfig)
    , _dldjpVolumeKMSKeyId    :: !(Maybe Text)
    , _dldjpEndTime           :: !(Maybe POSIX)
    , _dldjpOutputDataConfig  :: !(Maybe OutputDataConfig)
    , _dldjpDataAccessRoleARN :: !(Maybe Text)
    , _dldjpJobStatus         :: !(Maybe JobStatus)
    , _dldjpMessage           :: !(Maybe Text)
    , _dldjpSubmitTime        :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'DominantLanguageDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dldjpJobId' - The identifier assigned to the dominant language detection job.
--
-- * 'dldjpJobName' - The name that you assigned to the dominant language detection job.
--
-- * 'dldjpInputDataConfig' - The input data configuration that you supplied when you created the dominant language detection job.
--
-- * 'dldjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your dominant language detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'dldjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'dldjpEndTime' - The time that the dominant language detection job completed.
--
-- * 'dldjpOutputDataConfig' - The output data configuration that you supplied when you created the dominant language detection job.
--
-- * 'dldjpDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'dldjpJobStatus' - The current status of the dominant language detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- * 'dldjpMessage' - A description for the status of a job.
--
-- * 'dldjpSubmitTime' - The time that the dominant language detection job was submitted for processing.
dominantLanguageDetectionJobProperties
    :: DominantLanguageDetectionJobProperties
dominantLanguageDetectionJobProperties =
  DominantLanguageDetectionJobProperties'
    { _dldjpJobId = Nothing
    , _dldjpJobName = Nothing
    , _dldjpInputDataConfig = Nothing
    , _dldjpVPCConfig = Nothing
    , _dldjpVolumeKMSKeyId = Nothing
    , _dldjpEndTime = Nothing
    , _dldjpOutputDataConfig = Nothing
    , _dldjpDataAccessRoleARN = Nothing
    , _dldjpJobStatus = Nothing
    , _dldjpMessage = Nothing
    , _dldjpSubmitTime = Nothing
    }


-- | The identifier assigned to the dominant language detection job.
dldjpJobId :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpJobId = lens _dldjpJobId (\ s a -> s{_dldjpJobId = a})

-- | The name that you assigned to the dominant language detection job.
dldjpJobName :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpJobName = lens _dldjpJobName (\ s a -> s{_dldjpJobName = a})

-- | The input data configuration that you supplied when you created the dominant language detection job.
dldjpInputDataConfig :: Lens' DominantLanguageDetectionJobProperties (Maybe InputDataConfig)
dldjpInputDataConfig = lens _dldjpInputDataConfig (\ s a -> s{_dldjpInputDataConfig = a})

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your dominant language detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
dldjpVPCConfig :: Lens' DominantLanguageDetectionJobProperties (Maybe VPCConfig)
dldjpVPCConfig = lens _dldjpVPCConfig (\ s a -> s{_dldjpVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
dldjpVolumeKMSKeyId :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpVolumeKMSKeyId = lens _dldjpVolumeKMSKeyId (\ s a -> s{_dldjpVolumeKMSKeyId = a})

-- | The time that the dominant language detection job completed.
dldjpEndTime :: Lens' DominantLanguageDetectionJobProperties (Maybe UTCTime)
dldjpEndTime = lens _dldjpEndTime (\ s a -> s{_dldjpEndTime = a}) . mapping _Time

-- | The output data configuration that you supplied when you created the dominant language detection job.
dldjpOutputDataConfig :: Lens' DominantLanguageDetectionJobProperties (Maybe OutputDataConfig)
dldjpOutputDataConfig = lens _dldjpOutputDataConfig (\ s a -> s{_dldjpOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
dldjpDataAccessRoleARN :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpDataAccessRoleARN = lens _dldjpDataAccessRoleARN (\ s a -> s{_dldjpDataAccessRoleARN = a})

-- | The current status of the dominant language detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
dldjpJobStatus :: Lens' DominantLanguageDetectionJobProperties (Maybe JobStatus)
dldjpJobStatus = lens _dldjpJobStatus (\ s a -> s{_dldjpJobStatus = a})

-- | A description for the status of a job.
dldjpMessage :: Lens' DominantLanguageDetectionJobProperties (Maybe Text)
dldjpMessage = lens _dldjpMessage (\ s a -> s{_dldjpMessage = a})

-- | The time that the dominant language detection job was submitted for processing.
dldjpSubmitTime :: Lens' DominantLanguageDetectionJobProperties (Maybe UTCTime)
dldjpSubmitTime = lens _dldjpSubmitTime (\ s a -> s{_dldjpSubmitTime = a}) . mapping _Time

instance FromJSON
           DominantLanguageDetectionJobProperties
         where
        parseJSON
          = withObject "DominantLanguageDetectionJobProperties"
              (\ x ->
                 DominantLanguageDetectionJobProperties' <$>
                   (x .:? "JobId") <*> (x .:? "JobName") <*>
                     (x .:? "InputDataConfig")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "VolumeKmsKeyId")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "OutputDataConfig")
                     <*> (x .:? "DataAccessRoleArn")
                     <*> (x .:? "JobStatus")
                     <*> (x .:? "Message")
                     <*> (x .:? "SubmitTime"))

instance Hashable
           DominantLanguageDetectionJobProperties
         where

instance NFData
           DominantLanguageDetectionJobProperties
         where

-- | The filter used to determine which endpoints are are returned. You can filter jobs on their name, model, status, or the date and time that they were created. You can only set one filter at a time.
--
--
--
-- /See:/ 'endpointFilter' smart constructor.
data EndpointFilter =
  EndpointFilter'
    { _efStatus             :: !(Maybe EndpointStatus)
    , _efModelARN           :: !(Maybe Text)
    , _efCreationTimeAfter  :: !(Maybe POSIX)
    , _efCreationTimeBefore :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EndpointFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efStatus' - Specifies the status of the endpoint being returned. Possible values are: Creating, Ready, Updating, Deleting, Failed.
--
-- * 'efModelARN' - The Amazon Resource Number (ARN) of the model to which the endpoint is attached.
--
-- * 'efCreationTimeAfter' - Specifies a date after which the returned endpoint or endpoints were created.
--
-- * 'efCreationTimeBefore' - Specifies a date before which the returned endpoint or endpoints were created.
endpointFilter
    :: EndpointFilter
endpointFilter =
  EndpointFilter'
    { _efStatus = Nothing
    , _efModelARN = Nothing
    , _efCreationTimeAfter = Nothing
    , _efCreationTimeBefore = Nothing
    }


-- | Specifies the status of the endpoint being returned. Possible values are: Creating, Ready, Updating, Deleting, Failed.
efStatus :: Lens' EndpointFilter (Maybe EndpointStatus)
efStatus = lens _efStatus (\ s a -> s{_efStatus = a})

-- | The Amazon Resource Number (ARN) of the model to which the endpoint is attached.
efModelARN :: Lens' EndpointFilter (Maybe Text)
efModelARN = lens _efModelARN (\ s a -> s{_efModelARN = a})

-- | Specifies a date after which the returned endpoint or endpoints were created.
efCreationTimeAfter :: Lens' EndpointFilter (Maybe UTCTime)
efCreationTimeAfter = lens _efCreationTimeAfter (\ s a -> s{_efCreationTimeAfter = a}) . mapping _Time

-- | Specifies a date before which the returned endpoint or endpoints were created.
efCreationTimeBefore :: Lens' EndpointFilter (Maybe UTCTime)
efCreationTimeBefore = lens _efCreationTimeBefore (\ s a -> s{_efCreationTimeBefore = a}) . mapping _Time

instance Hashable EndpointFilter where

instance NFData EndpointFilter where

instance ToJSON EndpointFilter where
        toJSON EndpointFilter'{..}
          = object
              (catMaybes
                 [("Status" .=) <$> _efStatus,
                  ("ModelArn" .=) <$> _efModelARN,
                  ("CreationTimeAfter" .=) <$> _efCreationTimeAfter,
                  ("CreationTimeBefore" .=) <$> _efCreationTimeBefore])

-- | Specifies information about the specified endpoint.
--
--
--
-- /See:/ 'endpointProperties' smart constructor.
data EndpointProperties =
  EndpointProperties'
    { _epCreationTime          :: !(Maybe POSIX)
    , _epStatus                :: !(Maybe EndpointStatus)
    , _epModelARN              :: !(Maybe Text)
    , _epLastModifiedTime      :: !(Maybe POSIX)
    , _epDesiredInferenceUnits :: !(Maybe Nat)
    , _epCurrentInferenceUnits :: !(Maybe Nat)
    , _epMessage               :: !(Maybe Text)
    , _epEndpointARN           :: !(Maybe Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EndpointProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epCreationTime' - The creation date and time of the endpoint.
--
-- * 'epStatus' - Specifies the status of the endpoint. Because the endpoint updates and creation are asynchronous, so customers will need to wait for the endpoint to be @Ready@ status before making inference requests.
--
-- * 'epModelARN' - The Amazon Resource Number (ARN) of the model to which the endpoint is attached.
--
-- * 'epLastModifiedTime' - The date and time that the endpoint was last modified.
--
-- * 'epDesiredInferenceUnits' - The desired number of inference units to be used by the model using this endpoint. Each inference unit represents of a throughput of 100 characters per second.
--
-- * 'epCurrentInferenceUnits' - The number of inference units currently used by the model using this endpoint.
--
-- * 'epMessage' - Specifies a reason for failure in cases of @Failed@ status.
--
-- * 'epEndpointARN' - The Amazon Resource Number (ARN) of the endpoint.
endpointProperties
    :: EndpointProperties
endpointProperties =
  EndpointProperties'
    { _epCreationTime = Nothing
    , _epStatus = Nothing
    , _epModelARN = Nothing
    , _epLastModifiedTime = Nothing
    , _epDesiredInferenceUnits = Nothing
    , _epCurrentInferenceUnits = Nothing
    , _epMessage = Nothing
    , _epEndpointARN = Nothing
    }


-- | The creation date and time of the endpoint.
epCreationTime :: Lens' EndpointProperties (Maybe UTCTime)
epCreationTime = lens _epCreationTime (\ s a -> s{_epCreationTime = a}) . mapping _Time

-- | Specifies the status of the endpoint. Because the endpoint updates and creation are asynchronous, so customers will need to wait for the endpoint to be @Ready@ status before making inference requests.
epStatus :: Lens' EndpointProperties (Maybe EndpointStatus)
epStatus = lens _epStatus (\ s a -> s{_epStatus = a})

-- | The Amazon Resource Number (ARN) of the model to which the endpoint is attached.
epModelARN :: Lens' EndpointProperties (Maybe Text)
epModelARN = lens _epModelARN (\ s a -> s{_epModelARN = a})

-- | The date and time that the endpoint was last modified.
epLastModifiedTime :: Lens' EndpointProperties (Maybe UTCTime)
epLastModifiedTime = lens _epLastModifiedTime (\ s a -> s{_epLastModifiedTime = a}) . mapping _Time

-- | The desired number of inference units to be used by the model using this endpoint. Each inference unit represents of a throughput of 100 characters per second.
epDesiredInferenceUnits :: Lens' EndpointProperties (Maybe Natural)
epDesiredInferenceUnits = lens _epDesiredInferenceUnits (\ s a -> s{_epDesiredInferenceUnits = a}) . mapping _Nat

-- | The number of inference units currently used by the model using this endpoint.
epCurrentInferenceUnits :: Lens' EndpointProperties (Maybe Natural)
epCurrentInferenceUnits = lens _epCurrentInferenceUnits (\ s a -> s{_epCurrentInferenceUnits = a}) . mapping _Nat

-- | Specifies a reason for failure in cases of @Failed@ status.
epMessage :: Lens' EndpointProperties (Maybe Text)
epMessage = lens _epMessage (\ s a -> s{_epMessage = a})

-- | The Amazon Resource Number (ARN) of the endpoint.
epEndpointARN :: Lens' EndpointProperties (Maybe Text)
epEndpointARN = lens _epEndpointARN (\ s a -> s{_epEndpointARN = a})

instance FromJSON EndpointProperties where
        parseJSON
          = withObject "EndpointProperties"
              (\ x ->
                 EndpointProperties' <$>
                   (x .:? "CreationTime") <*> (x .:? "Status") <*>
                     (x .:? "ModelArn")
                     <*> (x .:? "LastModifiedTime")
                     <*> (x .:? "DesiredInferenceUnits")
                     <*> (x .:? "CurrentInferenceUnits")
                     <*> (x .:? "Message")
                     <*> (x .:? "EndpointArn"))

instance Hashable EndpointProperties where

instance NFData EndpointProperties where

-- | Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.
--
--
--
-- /See:/ 'entitiesDetectionJobFilter' smart constructor.
data EntitiesDetectionJobFilter =
  EntitiesDetectionJobFilter'
    { _edjfSubmitTimeAfter  :: !(Maybe POSIX)
    , _edjfSubmitTimeBefore :: !(Maybe POSIX)
    , _edjfJobName          :: !(Maybe Text)
    , _edjfJobStatus        :: !(Maybe JobStatus)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntitiesDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'edjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'edjfJobName' - Filters on the name of the job.
--
-- * 'edjfJobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
entitiesDetectionJobFilter
    :: EntitiesDetectionJobFilter
entitiesDetectionJobFilter =
  EntitiesDetectionJobFilter'
    { _edjfSubmitTimeAfter = Nothing
    , _edjfSubmitTimeBefore = Nothing
    , _edjfJobName = Nothing
    , _edjfJobStatus = Nothing
    }


-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
edjfSubmitTimeAfter :: Lens' EntitiesDetectionJobFilter (Maybe UTCTime)
edjfSubmitTimeAfter = lens _edjfSubmitTimeAfter (\ s a -> s{_edjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
edjfSubmitTimeBefore :: Lens' EntitiesDetectionJobFilter (Maybe UTCTime)
edjfSubmitTimeBefore = lens _edjfSubmitTimeBefore (\ s a -> s{_edjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters on the name of the job.
edjfJobName :: Lens' EntitiesDetectionJobFilter (Maybe Text)
edjfJobName = lens _edjfJobName (\ s a -> s{_edjfJobName = a})

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
edjfJobStatus :: Lens' EntitiesDetectionJobFilter (Maybe JobStatus)
edjfJobStatus = lens _edjfJobStatus (\ s a -> s{_edjfJobStatus = a})

instance Hashable EntitiesDetectionJobFilter where

instance NFData EntitiesDetectionJobFilter where

instance ToJSON EntitiesDetectionJobFilter where
        toJSON EntitiesDetectionJobFilter'{..}
          = object
              (catMaybes
                 [("SubmitTimeAfter" .=) <$> _edjfSubmitTimeAfter,
                  ("SubmitTimeBefore" .=) <$> _edjfSubmitTimeBefore,
                  ("JobName" .=) <$> _edjfJobName,
                  ("JobStatus" .=) <$> _edjfJobStatus])

-- | Provides information about an entities detection job.
--
--
--
-- /See:/ 'entitiesDetectionJobProperties' smart constructor.
data EntitiesDetectionJobProperties =
  EntitiesDetectionJobProperties'
    { _edjpLanguageCode        :: !(Maybe LanguageCode)
    , _edjpJobId               :: !(Maybe Text)
    , _edjpEntityRecognizerARN :: !(Maybe Text)
    , _edjpJobName             :: !(Maybe Text)
    , _edjpInputDataConfig     :: !(Maybe InputDataConfig)
    , _edjpVPCConfig           :: !(Maybe VPCConfig)
    , _edjpVolumeKMSKeyId      :: !(Maybe Text)
    , _edjpEndTime             :: !(Maybe POSIX)
    , _edjpOutputDataConfig    :: !(Maybe OutputDataConfig)
    , _edjpDataAccessRoleARN   :: !(Maybe Text)
    , _edjpJobStatus           :: !(Maybe JobStatus)
    , _edjpMessage             :: !(Maybe Text)
    , _edjpSubmitTime          :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntitiesDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edjpLanguageCode' - The language code of the input documents.
--
-- * 'edjpJobId' - The identifier assigned to the entities detection job.
--
-- * 'edjpEntityRecognizerARN' - The Amazon Resource Name (ARN) that identifies the entity recognizer.
--
-- * 'edjpJobName' - The name that you assigned the entities detection job.
--
-- * 'edjpInputDataConfig' - The input data configuration that you supplied when you created the entities detection job.
--
-- * 'edjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your entity detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'edjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'edjpEndTime' - The time that the entities detection job completed
--
-- * 'edjpOutputDataConfig' - The output data configuration that you supplied when you created the entities detection job.
--
-- * 'edjpDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'edjpJobStatus' - The current status of the entities detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- * 'edjpMessage' - A description of the status of a job.
--
-- * 'edjpSubmitTime' - The time that the entities detection job was submitted for processing.
entitiesDetectionJobProperties
    :: EntitiesDetectionJobProperties
entitiesDetectionJobProperties =
  EntitiesDetectionJobProperties'
    { _edjpLanguageCode = Nothing
    , _edjpJobId = Nothing
    , _edjpEntityRecognizerARN = Nothing
    , _edjpJobName = Nothing
    , _edjpInputDataConfig = Nothing
    , _edjpVPCConfig = Nothing
    , _edjpVolumeKMSKeyId = Nothing
    , _edjpEndTime = Nothing
    , _edjpOutputDataConfig = Nothing
    , _edjpDataAccessRoleARN = Nothing
    , _edjpJobStatus = Nothing
    , _edjpMessage = Nothing
    , _edjpSubmitTime = Nothing
    }


-- | The language code of the input documents.
edjpLanguageCode :: Lens' EntitiesDetectionJobProperties (Maybe LanguageCode)
edjpLanguageCode = lens _edjpLanguageCode (\ s a -> s{_edjpLanguageCode = a})

-- | The identifier assigned to the entities detection job.
edjpJobId :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpJobId = lens _edjpJobId (\ s a -> s{_edjpJobId = a})

-- | The Amazon Resource Name (ARN) that identifies the entity recognizer.
edjpEntityRecognizerARN :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpEntityRecognizerARN = lens _edjpEntityRecognizerARN (\ s a -> s{_edjpEntityRecognizerARN = a})

-- | The name that you assigned the entities detection job.
edjpJobName :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpJobName = lens _edjpJobName (\ s a -> s{_edjpJobName = a})

-- | The input data configuration that you supplied when you created the entities detection job.
edjpInputDataConfig :: Lens' EntitiesDetectionJobProperties (Maybe InputDataConfig)
edjpInputDataConfig = lens _edjpInputDataConfig (\ s a -> s{_edjpInputDataConfig = a})

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your entity detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
edjpVPCConfig :: Lens' EntitiesDetectionJobProperties (Maybe VPCConfig)
edjpVPCConfig = lens _edjpVPCConfig (\ s a -> s{_edjpVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
edjpVolumeKMSKeyId :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpVolumeKMSKeyId = lens _edjpVolumeKMSKeyId (\ s a -> s{_edjpVolumeKMSKeyId = a})

-- | The time that the entities detection job completed
edjpEndTime :: Lens' EntitiesDetectionJobProperties (Maybe UTCTime)
edjpEndTime = lens _edjpEndTime (\ s a -> s{_edjpEndTime = a}) . mapping _Time

-- | The output data configuration that you supplied when you created the entities detection job.
edjpOutputDataConfig :: Lens' EntitiesDetectionJobProperties (Maybe OutputDataConfig)
edjpOutputDataConfig = lens _edjpOutputDataConfig (\ s a -> s{_edjpOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
edjpDataAccessRoleARN :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpDataAccessRoleARN = lens _edjpDataAccessRoleARN (\ s a -> s{_edjpDataAccessRoleARN = a})

-- | The current status of the entities detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
edjpJobStatus :: Lens' EntitiesDetectionJobProperties (Maybe JobStatus)
edjpJobStatus = lens _edjpJobStatus (\ s a -> s{_edjpJobStatus = a})

-- | A description of the status of a job.
edjpMessage :: Lens' EntitiesDetectionJobProperties (Maybe Text)
edjpMessage = lens _edjpMessage (\ s a -> s{_edjpMessage = a})

-- | The time that the entities detection job was submitted for processing.
edjpSubmitTime :: Lens' EntitiesDetectionJobProperties (Maybe UTCTime)
edjpSubmitTime = lens _edjpSubmitTime (\ s a -> s{_edjpSubmitTime = a}) . mapping _Time

instance FromJSON EntitiesDetectionJobProperties
         where
        parseJSON
          = withObject "EntitiesDetectionJobProperties"
              (\ x ->
                 EntitiesDetectionJobProperties' <$>
                   (x .:? "LanguageCode") <*> (x .:? "JobId") <*>
                     (x .:? "EntityRecognizerArn")
                     <*> (x .:? "JobName")
                     <*> (x .:? "InputDataConfig")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "VolumeKmsKeyId")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "OutputDataConfig")
                     <*> (x .:? "DataAccessRoleArn")
                     <*> (x .:? "JobStatus")
                     <*> (x .:? "Message")
                     <*> (x .:? "SubmitTime"))

instance Hashable EntitiesDetectionJobProperties
         where

instance NFData EntitiesDetectionJobProperties where

-- | Provides information about an entity.
--
--
--
--
--
-- /See:/ 'entity' smart constructor.
data Entity =
  Entity'
    { _eBeginOffset :: !(Maybe Int)
    , _eText        :: !(Maybe Text)
    , _eScore       :: !(Maybe Double)
    , _eEndOffset   :: !(Maybe Int)
    , _eType        :: !(Maybe EntityType)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eBeginOffset' - A character offset in the input text that shows where the entity begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
--
-- * 'eText' - The text of the entity.
--
-- * 'eScore' - The level of confidence that Amazon Comprehend has in the accuracy of the detection.
--
-- * 'eEndOffset' - A character offset in the input text that shows where the entity ends. The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
--
-- * 'eType' - The entity's type.
entity
    :: Entity
entity =
  Entity'
    { _eBeginOffset = Nothing
    , _eText = Nothing
    , _eScore = Nothing
    , _eEndOffset = Nothing
    , _eType = Nothing
    }


-- | A character offset in the input text that shows where the entity begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
eBeginOffset :: Lens' Entity (Maybe Int)
eBeginOffset = lens _eBeginOffset (\ s a -> s{_eBeginOffset = a})

-- | The text of the entity.
eText :: Lens' Entity (Maybe Text)
eText = lens _eText (\ s a -> s{_eText = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of the detection.
eScore :: Lens' Entity (Maybe Double)
eScore = lens _eScore (\ s a -> s{_eScore = a})

-- | A character offset in the input text that shows where the entity ends. The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
eEndOffset :: Lens' Entity (Maybe Int)
eEndOffset = lens _eEndOffset (\ s a -> s{_eEndOffset = a})

-- | The entity's type.
eType :: Lens' Entity (Maybe EntityType)
eType = lens _eType (\ s a -> s{_eType = a})

instance FromJSON Entity where
        parseJSON
          = withObject "Entity"
              (\ x ->
                 Entity' <$>
                   (x .:? "BeginOffset") <*> (x .:? "Text") <*>
                     (x .:? "Score")
                     <*> (x .:? "EndOffset")
                     <*> (x .:? "Type"))

instance Hashable Entity where

instance NFData Entity where

-- | Describes the annotations associated with a entity recognizer.
--
--
--
-- /See:/ 'entityRecognizerAnnotations' smart constructor.
newtype EntityRecognizerAnnotations =
  EntityRecognizerAnnotations'
    { _eraS3URI :: Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerAnnotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eraS3URI' - Specifies the Amazon S3 location where the annotations for an entity recognizer are located. The URI must be in the same region as the API endpoint that you are calling.
entityRecognizerAnnotations
    :: Text -- ^ 'eraS3URI'
    -> EntityRecognizerAnnotations
entityRecognizerAnnotations pS3URI_ =
  EntityRecognizerAnnotations' {_eraS3URI = pS3URI_}


-- | Specifies the Amazon S3 location where the annotations for an entity recognizer are located. The URI must be in the same region as the API endpoint that you are calling.
eraS3URI :: Lens' EntityRecognizerAnnotations Text
eraS3URI = lens _eraS3URI (\ s a -> s{_eraS3URI = a})

instance FromJSON EntityRecognizerAnnotations where
        parseJSON
          = withObject "EntityRecognizerAnnotations"
              (\ x ->
                 EntityRecognizerAnnotations' <$> (x .: "S3Uri"))

instance Hashable EntityRecognizerAnnotations where

instance NFData EntityRecognizerAnnotations where

instance ToJSON EntityRecognizerAnnotations where
        toJSON EntityRecognizerAnnotations'{..}
          = object (catMaybes [Just ("S3Uri" .= _eraS3URI)])

-- | Describes the training documents submitted with an entity recognizer.
--
--
--
-- /See:/ 'entityRecognizerDocuments' smart constructor.
newtype EntityRecognizerDocuments =
  EntityRecognizerDocuments'
    { _erdS3URI :: Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerDocuments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erdS3URI' - Specifies the Amazon S3 location where the training documents for an entity recognizer are located. The URI must be in the same region as the API endpoint that you are calling.
entityRecognizerDocuments
    :: Text -- ^ 'erdS3URI'
    -> EntityRecognizerDocuments
entityRecognizerDocuments pS3URI_ =
  EntityRecognizerDocuments' {_erdS3URI = pS3URI_}


-- | Specifies the Amazon S3 location where the training documents for an entity recognizer are located. The URI must be in the same region as the API endpoint that you are calling.
erdS3URI :: Lens' EntityRecognizerDocuments Text
erdS3URI = lens _erdS3URI (\ s a -> s{_erdS3URI = a})

instance FromJSON EntityRecognizerDocuments where
        parseJSON
          = withObject "EntityRecognizerDocuments"
              (\ x ->
                 EntityRecognizerDocuments' <$> (x .: "S3Uri"))

instance Hashable EntityRecognizerDocuments where

instance NFData EntityRecognizerDocuments where

instance ToJSON EntityRecognizerDocuments where
        toJSON EntityRecognizerDocuments'{..}
          = object (catMaybes [Just ("S3Uri" .= _erdS3URI)])

-- | Describes the entity recognizer submitted with an entity recognizer.
--
--
--
-- /See:/ 'entityRecognizerEntityList' smart constructor.
newtype EntityRecognizerEntityList =
  EntityRecognizerEntityList'
    { _erelS3URI :: Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerEntityList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erelS3URI' - Specifies the Amazon S3 location where the entity list is located. The URI must be in the same region as the API endpoint that you are calling.
entityRecognizerEntityList
    :: Text -- ^ 'erelS3URI'
    -> EntityRecognizerEntityList
entityRecognizerEntityList pS3URI_ =
  EntityRecognizerEntityList' {_erelS3URI = pS3URI_}


-- | Specifies the Amazon S3 location where the entity list is located. The URI must be in the same region as the API endpoint that you are calling.
erelS3URI :: Lens' EntityRecognizerEntityList Text
erelS3URI = lens _erelS3URI (\ s a -> s{_erelS3URI = a})

instance FromJSON EntityRecognizerEntityList where
        parseJSON
          = withObject "EntityRecognizerEntityList"
              (\ x ->
                 EntityRecognizerEntityList' <$> (x .: "S3Uri"))

instance Hashable EntityRecognizerEntityList where

instance NFData EntityRecognizerEntityList where

instance ToJSON EntityRecognizerEntityList where
        toJSON EntityRecognizerEntityList'{..}
          = object (catMaybes [Just ("S3Uri" .= _erelS3URI)])

-- | Detailed information about the accuracy of an entity recognizer.
--
--
--
-- /See:/ 'entityRecognizerEvaluationMetrics' smart constructor.
data EntityRecognizerEvaluationMetrics =
  EntityRecognizerEvaluationMetrics'
    { _eremRecall    :: !(Maybe Double)
    , _eremPrecision :: !(Maybe Double)
    , _eremF1Score   :: !(Maybe Double)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerEvaluationMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eremRecall' - A measure of how complete the recognizer results are for the test data. High recall means that the recognizer returned most of the relevant results.
--
-- * 'eremPrecision' - A measure of the usefulness of the recognizer results in the test data. High precision means that the recognizer returned substantially more relevant results than irrelevant ones.
--
-- * 'eremF1Score' - A measure of how accurate the recognizer results are for the test data. It is derived from the @Precision@ and @Recall@ values. The @F1Score@ is the harmonic average of the two scores. The highest score is 1, and the worst score is 0.
entityRecognizerEvaluationMetrics
    :: EntityRecognizerEvaluationMetrics
entityRecognizerEvaluationMetrics =
  EntityRecognizerEvaluationMetrics'
    {_eremRecall = Nothing, _eremPrecision = Nothing, _eremF1Score = Nothing}


-- | A measure of how complete the recognizer results are for the test data. High recall means that the recognizer returned most of the relevant results.
eremRecall :: Lens' EntityRecognizerEvaluationMetrics (Maybe Double)
eremRecall = lens _eremRecall (\ s a -> s{_eremRecall = a})

-- | A measure of the usefulness of the recognizer results in the test data. High precision means that the recognizer returned substantially more relevant results than irrelevant ones.
eremPrecision :: Lens' EntityRecognizerEvaluationMetrics (Maybe Double)
eremPrecision = lens _eremPrecision (\ s a -> s{_eremPrecision = a})

-- | A measure of how accurate the recognizer results are for the test data. It is derived from the @Precision@ and @Recall@ values. The @F1Score@ is the harmonic average of the two scores. The highest score is 1, and the worst score is 0.
eremF1Score :: Lens' EntityRecognizerEvaluationMetrics (Maybe Double)
eremF1Score = lens _eremF1Score (\ s a -> s{_eremF1Score = a})

instance FromJSON EntityRecognizerEvaluationMetrics
         where
        parseJSON
          = withObject "EntityRecognizerEvaluationMetrics"
              (\ x ->
                 EntityRecognizerEvaluationMetrics' <$>
                   (x .:? "Recall") <*> (x .:? "Precision") <*>
                     (x .:? "F1Score"))

instance Hashable EntityRecognizerEvaluationMetrics
         where

instance NFData EntityRecognizerEvaluationMetrics
         where

-- | Provides information for filtering a list of entity recognizers. You can only specify one filtering parameter in a request. For more information, see the operation./>
--
--
--
-- /See:/ 'entityRecognizerFilter' smart constructor.
data EntityRecognizerFilter =
  EntityRecognizerFilter'
    { _erfStatus           :: !(Maybe ModelStatus)
    , _erfSubmitTimeAfter  :: !(Maybe POSIX)
    , _erfSubmitTimeBefore :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erfStatus' - The status of an entity recognizer.
--
-- * 'erfSubmitTimeAfter' - Filters the list of entities based on the time that the list was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'erfSubmitTimeBefore' - Filters the list of entities based on the time that the list was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.
entityRecognizerFilter
    :: EntityRecognizerFilter
entityRecognizerFilter =
  EntityRecognizerFilter'
    { _erfStatus = Nothing
    , _erfSubmitTimeAfter = Nothing
    , _erfSubmitTimeBefore = Nothing
    }


-- | The status of an entity recognizer.
erfStatus :: Lens' EntityRecognizerFilter (Maybe ModelStatus)
erfStatus = lens _erfStatus (\ s a -> s{_erfStatus = a})

-- | Filters the list of entities based on the time that the list was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.
erfSubmitTimeAfter :: Lens' EntityRecognizerFilter (Maybe UTCTime)
erfSubmitTimeAfter = lens _erfSubmitTimeAfter (\ s a -> s{_erfSubmitTimeAfter = a}) . mapping _Time

-- | Filters the list of entities based on the time that the list was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.
erfSubmitTimeBefore :: Lens' EntityRecognizerFilter (Maybe UTCTime)
erfSubmitTimeBefore = lens _erfSubmitTimeBefore (\ s a -> s{_erfSubmitTimeBefore = a}) . mapping _Time

instance Hashable EntityRecognizerFilter where

instance NFData EntityRecognizerFilter where

instance ToJSON EntityRecognizerFilter where
        toJSON EntityRecognizerFilter'{..}
          = object
              (catMaybes
                 [("Status" .=) <$> _erfStatus,
                  ("SubmitTimeAfter" .=) <$> _erfSubmitTimeAfter,
                  ("SubmitTimeBefore" .=) <$> _erfSubmitTimeBefore])

-- | Specifies the format and location of the input data.
--
--
--
-- /See:/ 'entityRecognizerInputDataConfig' smart constructor.
data EntityRecognizerInputDataConfig =
  EntityRecognizerInputDataConfig'
    { _eridcAnnotations :: !(Maybe EntityRecognizerAnnotations)
    , _eridcEntityList  :: !(Maybe EntityRecognizerEntityList)
    , _eridcEntityTypes :: ![EntityTypesListItem]
    , _eridcDocuments   :: !EntityRecognizerDocuments
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerInputDataConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eridcAnnotations' - S3 location of the annotations file for an entity recognizer.
--
-- * 'eridcEntityList' - S3 location of the entity list for an entity recognizer.
--
-- * 'eridcEntityTypes' - The entity types in the input data for an entity recognizer. A maximum of 12 entity types can be used at one time to train an entity recognizer.
--
-- * 'eridcDocuments' - S3 location of the documents folder for an entity recognizer
entityRecognizerInputDataConfig
    :: EntityRecognizerDocuments -- ^ 'eridcDocuments'
    -> EntityRecognizerInputDataConfig
entityRecognizerInputDataConfig pDocuments_ =
  EntityRecognizerInputDataConfig'
    { _eridcAnnotations = Nothing
    , _eridcEntityList = Nothing
    , _eridcEntityTypes = mempty
    , _eridcDocuments = pDocuments_
    }


-- | S3 location of the annotations file for an entity recognizer.
eridcAnnotations :: Lens' EntityRecognizerInputDataConfig (Maybe EntityRecognizerAnnotations)
eridcAnnotations = lens _eridcAnnotations (\ s a -> s{_eridcAnnotations = a})

-- | S3 location of the entity list for an entity recognizer.
eridcEntityList :: Lens' EntityRecognizerInputDataConfig (Maybe EntityRecognizerEntityList)
eridcEntityList = lens _eridcEntityList (\ s a -> s{_eridcEntityList = a})

-- | The entity types in the input data for an entity recognizer. A maximum of 12 entity types can be used at one time to train an entity recognizer.
eridcEntityTypes :: Lens' EntityRecognizerInputDataConfig [EntityTypesListItem]
eridcEntityTypes = lens _eridcEntityTypes (\ s a -> s{_eridcEntityTypes = a}) . _Coerce

-- | S3 location of the documents folder for an entity recognizer
eridcDocuments :: Lens' EntityRecognizerInputDataConfig EntityRecognizerDocuments
eridcDocuments = lens _eridcDocuments (\ s a -> s{_eridcDocuments = a})

instance FromJSON EntityRecognizerInputDataConfig
         where
        parseJSON
          = withObject "EntityRecognizerInputDataConfig"
              (\ x ->
                 EntityRecognizerInputDataConfig' <$>
                   (x .:? "Annotations") <*> (x .:? "EntityList") <*>
                     (x .:? "EntityTypes" .!= mempty)
                     <*> (x .: "Documents"))

instance Hashable EntityRecognizerInputDataConfig
         where

instance NFData EntityRecognizerInputDataConfig where

instance ToJSON EntityRecognizerInputDataConfig where
        toJSON EntityRecognizerInputDataConfig'{..}
          = object
              (catMaybes
                 [("Annotations" .=) <$> _eridcAnnotations,
                  ("EntityList" .=) <$> _eridcEntityList,
                  Just ("EntityTypes" .= _eridcEntityTypes),
                  Just ("Documents" .= _eridcDocuments)])

-- | Detailed information about an entity recognizer.
--
--
--
-- /See:/ 'entityRecognizerMetadata' smart constructor.
data EntityRecognizerMetadata =
  EntityRecognizerMetadata'
    { _ermEntityTypes :: !(Maybe [EntityRecognizerMetadataEntityTypesListItem])
    , _ermEvaluationMetrics :: !(Maybe EntityRecognizerEvaluationMetrics)
    , _ermNumberOfTrainedDocuments :: !(Maybe Int)
    , _ermNumberOfTestDocuments :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ermEntityTypes' - Entity types from the metadata of an entity recognizer.
--
-- * 'ermEvaluationMetrics' - Detailed information about the accuracy of an entity recognizer.
--
-- * 'ermNumberOfTrainedDocuments' - The number of documents in the input data that were used to train the entity recognizer. Typically this is 80 to 90 percent of the input documents.
--
-- * 'ermNumberOfTestDocuments' - The number of documents in the input data that were used to test the entity recognizer. Typically this is 10 to 20 percent of the input documents.
entityRecognizerMetadata
    :: EntityRecognizerMetadata
entityRecognizerMetadata =
  EntityRecognizerMetadata'
    { _ermEntityTypes = Nothing
    , _ermEvaluationMetrics = Nothing
    , _ermNumberOfTrainedDocuments = Nothing
    , _ermNumberOfTestDocuments = Nothing
    }


-- | Entity types from the metadata of an entity recognizer.
ermEntityTypes :: Lens' EntityRecognizerMetadata [EntityRecognizerMetadataEntityTypesListItem]
ermEntityTypes = lens _ermEntityTypes (\ s a -> s{_ermEntityTypes = a}) . _Default . _Coerce

-- | Detailed information about the accuracy of an entity recognizer.
ermEvaluationMetrics :: Lens' EntityRecognizerMetadata (Maybe EntityRecognizerEvaluationMetrics)
ermEvaluationMetrics = lens _ermEvaluationMetrics (\ s a -> s{_ermEvaluationMetrics = a})

-- | The number of documents in the input data that were used to train the entity recognizer. Typically this is 80 to 90 percent of the input documents.
ermNumberOfTrainedDocuments :: Lens' EntityRecognizerMetadata (Maybe Int)
ermNumberOfTrainedDocuments = lens _ermNumberOfTrainedDocuments (\ s a -> s{_ermNumberOfTrainedDocuments = a})

-- | The number of documents in the input data that were used to test the entity recognizer. Typically this is 10 to 20 percent of the input documents.
ermNumberOfTestDocuments :: Lens' EntityRecognizerMetadata (Maybe Int)
ermNumberOfTestDocuments = lens _ermNumberOfTestDocuments (\ s a -> s{_ermNumberOfTestDocuments = a})

instance FromJSON EntityRecognizerMetadata where
        parseJSON
          = withObject "EntityRecognizerMetadata"
              (\ x ->
                 EntityRecognizerMetadata' <$>
                   (x .:? "EntityTypes" .!= mempty) <*>
                     (x .:? "EvaluationMetrics")
                     <*> (x .:? "NumberOfTrainedDocuments")
                     <*> (x .:? "NumberOfTestDocuments"))

instance Hashable EntityRecognizerMetadata where

instance NFData EntityRecognizerMetadata where

-- | Individual item from the list of entity types in the metadata of an entity recognizer.
--
--
--
-- /See:/ 'entityRecognizerMetadataEntityTypesListItem' smart constructor.
data EntityRecognizerMetadataEntityTypesListItem =
  EntityRecognizerMetadataEntityTypesListItem'
    { _ermetliEvaluationMetrics     :: !(Maybe EntityTypesEvaluationMetrics)
    , _ermetliType                  :: !(Maybe Text)
    , _ermetliNumberOfTrainMentions :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerMetadataEntityTypesListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ermetliEvaluationMetrics' - Detailed information about the accuracy of the entity recognizer for a specific item on the list of entity types.
--
-- * 'ermetliType' - Type of entity from the list of entity types in the metadata of an entity recognizer.
--
-- * 'ermetliNumberOfTrainMentions' - Indicates the number of times the given entity type was seen in the training data.
entityRecognizerMetadataEntityTypesListItem
    :: EntityRecognizerMetadataEntityTypesListItem
entityRecognizerMetadataEntityTypesListItem =
  EntityRecognizerMetadataEntityTypesListItem'
    { _ermetliEvaluationMetrics = Nothing
    , _ermetliType = Nothing
    , _ermetliNumberOfTrainMentions = Nothing
    }


-- | Detailed information about the accuracy of the entity recognizer for a specific item on the list of entity types.
ermetliEvaluationMetrics :: Lens' EntityRecognizerMetadataEntityTypesListItem (Maybe EntityTypesEvaluationMetrics)
ermetliEvaluationMetrics = lens _ermetliEvaluationMetrics (\ s a -> s{_ermetliEvaluationMetrics = a})

-- | Type of entity from the list of entity types in the metadata of an entity recognizer.
ermetliType :: Lens' EntityRecognizerMetadataEntityTypesListItem (Maybe Text)
ermetliType = lens _ermetliType (\ s a -> s{_ermetliType = a})

-- | Indicates the number of times the given entity type was seen in the training data.
ermetliNumberOfTrainMentions :: Lens' EntityRecognizerMetadataEntityTypesListItem (Maybe Int)
ermetliNumberOfTrainMentions = lens _ermetliNumberOfTrainMentions (\ s a -> s{_ermetliNumberOfTrainMentions = a})

instance FromJSON
           EntityRecognizerMetadataEntityTypesListItem
         where
        parseJSON
          = withObject
              "EntityRecognizerMetadataEntityTypesListItem"
              (\ x ->
                 EntityRecognizerMetadataEntityTypesListItem' <$>
                   (x .:? "EvaluationMetrics") <*> (x .:? "Type") <*>
                     (x .:? "NumberOfTrainMentions"))

instance Hashable
           EntityRecognizerMetadataEntityTypesListItem
         where

instance NFData
           EntityRecognizerMetadataEntityTypesListItem
         where

-- | Describes information about an entity recognizer.
--
--
--
-- /See:/ 'entityRecognizerProperties' smart constructor.
data EntityRecognizerProperties =
  EntityRecognizerProperties'
    { _erpStatus              :: !(Maybe ModelStatus)
    , _erpLanguageCode        :: !(Maybe LanguageCode)
    , _erpTrainingEndTime     :: !(Maybe POSIX)
    , _erpEntityRecognizerARN :: !(Maybe Text)
    , _erpInputDataConfig     :: !(Maybe EntityRecognizerInputDataConfig)
    , _erpVPCConfig           :: !(Maybe VPCConfig)
    , _erpVolumeKMSKeyId      :: !(Maybe Text)
    , _erpEndTime             :: !(Maybe POSIX)
    , _erpTrainingStartTime   :: !(Maybe POSIX)
    , _erpDataAccessRoleARN   :: !(Maybe Text)
    , _erpRecognizerMetadata  :: !(Maybe EntityRecognizerMetadata)
    , _erpMessage             :: !(Maybe Text)
    , _erpSubmitTime          :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityRecognizerProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erpStatus' - Provides the status of the entity recognizer.
--
-- * 'erpLanguageCode' - The language of the input documents. All documents must be in the same language. Only English ("en") is currently supported.
--
-- * 'erpTrainingEndTime' - The time that training of the entity recognizer was completed.
--
-- * 'erpEntityRecognizerARN' - The Amazon Resource Name (ARN) that identifies the entity recognizer.
--
-- * 'erpInputDataConfig' - The input data properties of an entity recognizer.
--
-- * 'erpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your custom entity recognizer. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'erpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'erpEndTime' - The time that the recognizer creation completed.
--
-- * 'erpTrainingStartTime' - The time that training of the entity recognizer started.
--
-- * 'erpDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your input data.
--
-- * 'erpRecognizerMetadata' - Provides information about an entity recognizer.
--
-- * 'erpMessage' - A description of the status of the recognizer.
--
-- * 'erpSubmitTime' - The time that the recognizer was submitted for processing.
entityRecognizerProperties
    :: EntityRecognizerProperties
entityRecognizerProperties =
  EntityRecognizerProperties'
    { _erpStatus = Nothing
    , _erpLanguageCode = Nothing
    , _erpTrainingEndTime = Nothing
    , _erpEntityRecognizerARN = Nothing
    , _erpInputDataConfig = Nothing
    , _erpVPCConfig = Nothing
    , _erpVolumeKMSKeyId = Nothing
    , _erpEndTime = Nothing
    , _erpTrainingStartTime = Nothing
    , _erpDataAccessRoleARN = Nothing
    , _erpRecognizerMetadata = Nothing
    , _erpMessage = Nothing
    , _erpSubmitTime = Nothing
    }


-- | Provides the status of the entity recognizer.
erpStatus :: Lens' EntityRecognizerProperties (Maybe ModelStatus)
erpStatus = lens _erpStatus (\ s a -> s{_erpStatus = a})

-- | The language of the input documents. All documents must be in the same language. Only English ("en") is currently supported.
erpLanguageCode :: Lens' EntityRecognizerProperties (Maybe LanguageCode)
erpLanguageCode = lens _erpLanguageCode (\ s a -> s{_erpLanguageCode = a})

-- | The time that training of the entity recognizer was completed.
erpTrainingEndTime :: Lens' EntityRecognizerProperties (Maybe UTCTime)
erpTrainingEndTime = lens _erpTrainingEndTime (\ s a -> s{_erpTrainingEndTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) that identifies the entity recognizer.
erpEntityRecognizerARN :: Lens' EntityRecognizerProperties (Maybe Text)
erpEntityRecognizerARN = lens _erpEntityRecognizerARN (\ s a -> s{_erpEntityRecognizerARN = a})

-- | The input data properties of an entity recognizer.
erpInputDataConfig :: Lens' EntityRecognizerProperties (Maybe EntityRecognizerInputDataConfig)
erpInputDataConfig = lens _erpInputDataConfig (\ s a -> s{_erpInputDataConfig = a})

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your custom entity recognizer. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
erpVPCConfig :: Lens' EntityRecognizerProperties (Maybe VPCConfig)
erpVPCConfig = lens _erpVPCConfig (\ s a -> s{_erpVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
erpVolumeKMSKeyId :: Lens' EntityRecognizerProperties (Maybe Text)
erpVolumeKMSKeyId = lens _erpVolumeKMSKeyId (\ s a -> s{_erpVolumeKMSKeyId = a})

-- | The time that the recognizer creation completed.
erpEndTime :: Lens' EntityRecognizerProperties (Maybe UTCTime)
erpEndTime = lens _erpEndTime (\ s a -> s{_erpEndTime = a}) . mapping _Time

-- | The time that training of the entity recognizer started.
erpTrainingStartTime :: Lens' EntityRecognizerProperties (Maybe UTCTime)
erpTrainingStartTime = lens _erpTrainingStartTime (\ s a -> s{_erpTrainingStartTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your input data.
erpDataAccessRoleARN :: Lens' EntityRecognizerProperties (Maybe Text)
erpDataAccessRoleARN = lens _erpDataAccessRoleARN (\ s a -> s{_erpDataAccessRoleARN = a})

-- | Provides information about an entity recognizer.
erpRecognizerMetadata :: Lens' EntityRecognizerProperties (Maybe EntityRecognizerMetadata)
erpRecognizerMetadata = lens _erpRecognizerMetadata (\ s a -> s{_erpRecognizerMetadata = a})

-- | A description of the status of the recognizer.
erpMessage :: Lens' EntityRecognizerProperties (Maybe Text)
erpMessage = lens _erpMessage (\ s a -> s{_erpMessage = a})

-- | The time that the recognizer was submitted for processing.
erpSubmitTime :: Lens' EntityRecognizerProperties (Maybe UTCTime)
erpSubmitTime = lens _erpSubmitTime (\ s a -> s{_erpSubmitTime = a}) . mapping _Time

instance FromJSON EntityRecognizerProperties where
        parseJSON
          = withObject "EntityRecognizerProperties"
              (\ x ->
                 EntityRecognizerProperties' <$>
                   (x .:? "Status") <*> (x .:? "LanguageCode") <*>
                     (x .:? "TrainingEndTime")
                     <*> (x .:? "EntityRecognizerArn")
                     <*> (x .:? "InputDataConfig")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "VolumeKmsKeyId")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "TrainingStartTime")
                     <*> (x .:? "DataAccessRoleArn")
                     <*> (x .:? "RecognizerMetadata")
                     <*> (x .:? "Message")
                     <*> (x .:? "SubmitTime"))

instance Hashable EntityRecognizerProperties where

instance NFData EntityRecognizerProperties where

-- | Detailed information about the accuracy of an entity recognizer for a specific entity type.
--
--
--
-- /See:/ 'entityTypesEvaluationMetrics' smart constructor.
data EntityTypesEvaluationMetrics =
  EntityTypesEvaluationMetrics'
    { _etemRecall    :: !(Maybe Double)
    , _etemPrecision :: !(Maybe Double)
    , _etemF1Score   :: !(Maybe Double)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityTypesEvaluationMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etemRecall' - A measure of how complete the recognizer results are for a specific entity type in the test data. High recall means that the recognizer returned most of the relevant results.
--
-- * 'etemPrecision' - A measure of the usefulness of the recognizer results for a specific entity type in the test data. High precision means that the recognizer returned substantially more relevant results than irrelevant ones.
--
-- * 'etemF1Score' - A measure of how accurate the recognizer results are for for a specific entity type in the test data. It is derived from the @Precision@ and @Recall@ values. The @F1Score@ is the harmonic average of the two scores. The highest score is 1, and the worst score is 0.
entityTypesEvaluationMetrics
    :: EntityTypesEvaluationMetrics
entityTypesEvaluationMetrics =
  EntityTypesEvaluationMetrics'
    {_etemRecall = Nothing, _etemPrecision = Nothing, _etemF1Score = Nothing}


-- | A measure of how complete the recognizer results are for a specific entity type in the test data. High recall means that the recognizer returned most of the relevant results.
etemRecall :: Lens' EntityTypesEvaluationMetrics (Maybe Double)
etemRecall = lens _etemRecall (\ s a -> s{_etemRecall = a})

-- | A measure of the usefulness of the recognizer results for a specific entity type in the test data. High precision means that the recognizer returned substantially more relevant results than irrelevant ones.
etemPrecision :: Lens' EntityTypesEvaluationMetrics (Maybe Double)
etemPrecision = lens _etemPrecision (\ s a -> s{_etemPrecision = a})

-- | A measure of how accurate the recognizer results are for for a specific entity type in the test data. It is derived from the @Precision@ and @Recall@ values. The @F1Score@ is the harmonic average of the two scores. The highest score is 1, and the worst score is 0.
etemF1Score :: Lens' EntityTypesEvaluationMetrics (Maybe Double)
etemF1Score = lens _etemF1Score (\ s a -> s{_etemF1Score = a})

instance FromJSON EntityTypesEvaluationMetrics where
        parseJSON
          = withObject "EntityTypesEvaluationMetrics"
              (\ x ->
                 EntityTypesEvaluationMetrics' <$>
                   (x .:? "Recall") <*> (x .:? "Precision") <*>
                     (x .:? "F1Score"))

instance Hashable EntityTypesEvaluationMetrics where

instance NFData EntityTypesEvaluationMetrics where

-- | Information about an individual item on a list of entity types.
--
--
--
-- /See:/ 'entityTypesListItem' smart constructor.
newtype EntityTypesListItem =
  EntityTypesListItem'
    { _etliType :: Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityTypesListItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etliType' - Entity type of an item on an entity type list.
entityTypesListItem
    :: Text -- ^ 'etliType'
    -> EntityTypesListItem
entityTypesListItem pType_ = EntityTypesListItem' {_etliType = pType_}


-- | Entity type of an item on an entity type list.
etliType :: Lens' EntityTypesListItem Text
etliType = lens _etliType (\ s a -> s{_etliType = a})

instance FromJSON EntityTypesListItem where
        parseJSON
          = withObject "EntityTypesListItem"
              (\ x -> EntityTypesListItem' <$> (x .: "Type"))

instance Hashable EntityTypesListItem where

instance NFData EntityTypesListItem where

instance ToJSON EntityTypesListItem where
        toJSON EntityTypesListItem'{..}
          = object (catMaybes [Just ("Type" .= _etliType)])

-- | The input properties for a topic detection job.
--
--
--
-- /See:/ 'inputDataConfig' smart constructor.
data InputDataConfig =
  InputDataConfig'
    { _idcInputFormat :: !(Maybe InputFormat)
    , _idcS3URI       :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'InputDataConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idcInputFormat' - Specifies how the text in an input file should be processed:     * @ONE_DOC_PER_FILE@ - Each file is considered a separate document. Use this option when you are processing large documents, such as newspaper articles or scientific papers.     * @ONE_DOC_PER_LINE@ - Each line in a file is considered a separate document. Use this option when you are processing many short documents, such as text messages.
--
-- * 'idcS3URI' - The Amazon S3 URI for the input data. The URI must be in same region as the API endpoint that you are calling. The URI can point to a single input file or it can provide the prefix for a collection of data files.  For example, if you use the URI @S3://bucketName/prefix@ , if the prefix is a single file, Amazon Comprehend uses that file as input. If more than one file begins with the prefix, Amazon Comprehend uses all of them as input.
inputDataConfig
    :: Text -- ^ 'idcS3URI'
    -> InputDataConfig
inputDataConfig pS3URI_ =
  InputDataConfig' {_idcInputFormat = Nothing, _idcS3URI = pS3URI_}


-- | Specifies how the text in an input file should be processed:     * @ONE_DOC_PER_FILE@ - Each file is considered a separate document. Use this option when you are processing large documents, such as newspaper articles or scientific papers.     * @ONE_DOC_PER_LINE@ - Each line in a file is considered a separate document. Use this option when you are processing many short documents, such as text messages.
idcInputFormat :: Lens' InputDataConfig (Maybe InputFormat)
idcInputFormat = lens _idcInputFormat (\ s a -> s{_idcInputFormat = a})

-- | The Amazon S3 URI for the input data. The URI must be in same region as the API endpoint that you are calling. The URI can point to a single input file or it can provide the prefix for a collection of data files.  For example, if you use the URI @S3://bucketName/prefix@ , if the prefix is a single file, Amazon Comprehend uses that file as input. If more than one file begins with the prefix, Amazon Comprehend uses all of them as input.
idcS3URI :: Lens' InputDataConfig Text
idcS3URI = lens _idcS3URI (\ s a -> s{_idcS3URI = a})

instance FromJSON InputDataConfig where
        parseJSON
          = withObject "InputDataConfig"
              (\ x ->
                 InputDataConfig' <$>
                   (x .:? "InputFormat") <*> (x .: "S3Uri"))

instance Hashable InputDataConfig where

instance NFData InputDataConfig where

instance ToJSON InputDataConfig where
        toJSON InputDataConfig'{..}
          = object
              (catMaybes
                 [("InputFormat" .=) <$> _idcInputFormat,
                  Just ("S3Uri" .= _idcS3URI)])

-- | Describes a key noun phrase.
--
--
--
-- /See:/ 'keyPhrase' smart constructor.
data KeyPhrase =
  KeyPhrase'
    { _kpBeginOffset :: !(Maybe Int)
    , _kpText        :: !(Maybe Text)
    , _kpScore       :: !(Maybe Double)
    , _kpEndOffset   :: !(Maybe Int)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyPhrase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kpBeginOffset' - A character offset in the input text that shows where the key phrase begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
--
-- * 'kpText' - The text of a key noun phrase.
--
-- * 'kpScore' - The level of confidence that Amazon Comprehend has in the accuracy of the detection.
--
-- * 'kpEndOffset' - A character offset in the input text where the key phrase ends. The offset returns the position of each UTF-8 code point in the string. A @code point@ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
keyPhrase
    :: KeyPhrase
keyPhrase =
  KeyPhrase'
    { _kpBeginOffset = Nothing
    , _kpText = Nothing
    , _kpScore = Nothing
    , _kpEndOffset = Nothing
    }


-- | A character offset in the input text that shows where the key phrase begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
kpBeginOffset :: Lens' KeyPhrase (Maybe Int)
kpBeginOffset = lens _kpBeginOffset (\ s a -> s{_kpBeginOffset = a})

-- | The text of a key noun phrase.
kpText :: Lens' KeyPhrase (Maybe Text)
kpText = lens _kpText (\ s a -> s{_kpText = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of the detection.
kpScore :: Lens' KeyPhrase (Maybe Double)
kpScore = lens _kpScore (\ s a -> s{_kpScore = a})

-- | A character offset in the input text where the key phrase ends. The offset returns the position of each UTF-8 code point in the string. A @code point@ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
kpEndOffset :: Lens' KeyPhrase (Maybe Int)
kpEndOffset = lens _kpEndOffset (\ s a -> s{_kpEndOffset = a})

instance FromJSON KeyPhrase where
        parseJSON
          = withObject "KeyPhrase"
              (\ x ->
                 KeyPhrase' <$>
                   (x .:? "BeginOffset") <*> (x .:? "Text") <*>
                     (x .:? "Score")
                     <*> (x .:? "EndOffset"))

instance Hashable KeyPhrase where

instance NFData KeyPhrase where

-- | Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.
--
--
--
-- /See:/ 'keyPhrasesDetectionJobFilter' smart constructor.
data KeyPhrasesDetectionJobFilter =
  KeyPhrasesDetectionJobFilter'
    { _kpdjfSubmitTimeAfter  :: !(Maybe POSIX)
    , _kpdjfSubmitTimeBefore :: !(Maybe POSIX)
    , _kpdjfJobName          :: !(Maybe Text)
    , _kpdjfJobStatus        :: !(Maybe JobStatus)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyPhrasesDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kpdjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'kpdjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'kpdjfJobName' - Filters on the name of the job.
--
-- * 'kpdjfJobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
keyPhrasesDetectionJobFilter
    :: KeyPhrasesDetectionJobFilter
keyPhrasesDetectionJobFilter =
  KeyPhrasesDetectionJobFilter'
    { _kpdjfSubmitTimeAfter = Nothing
    , _kpdjfSubmitTimeBefore = Nothing
    , _kpdjfJobName = Nothing
    , _kpdjfJobStatus = Nothing
    }


-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
kpdjfSubmitTimeAfter :: Lens' KeyPhrasesDetectionJobFilter (Maybe UTCTime)
kpdjfSubmitTimeAfter = lens _kpdjfSubmitTimeAfter (\ s a -> s{_kpdjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
kpdjfSubmitTimeBefore :: Lens' KeyPhrasesDetectionJobFilter (Maybe UTCTime)
kpdjfSubmitTimeBefore = lens _kpdjfSubmitTimeBefore (\ s a -> s{_kpdjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters on the name of the job.
kpdjfJobName :: Lens' KeyPhrasesDetectionJobFilter (Maybe Text)
kpdjfJobName = lens _kpdjfJobName (\ s a -> s{_kpdjfJobName = a})

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
kpdjfJobStatus :: Lens' KeyPhrasesDetectionJobFilter (Maybe JobStatus)
kpdjfJobStatus = lens _kpdjfJobStatus (\ s a -> s{_kpdjfJobStatus = a})

instance Hashable KeyPhrasesDetectionJobFilter where

instance NFData KeyPhrasesDetectionJobFilter where

instance ToJSON KeyPhrasesDetectionJobFilter where
        toJSON KeyPhrasesDetectionJobFilter'{..}
          = object
              (catMaybes
                 [("SubmitTimeAfter" .=) <$> _kpdjfSubmitTimeAfter,
                  ("SubmitTimeBefore" .=) <$> _kpdjfSubmitTimeBefore,
                  ("JobName" .=) <$> _kpdjfJobName,
                  ("JobStatus" .=) <$> _kpdjfJobStatus])

-- | Provides information about a key phrases detection job.
--
--
--
-- /See:/ 'keyPhrasesDetectionJobProperties' smart constructor.
data KeyPhrasesDetectionJobProperties =
  KeyPhrasesDetectionJobProperties'
    { _kpdjpLanguageCode      :: !(Maybe LanguageCode)
    , _kpdjpJobId             :: !(Maybe Text)
    , _kpdjpJobName           :: !(Maybe Text)
    , _kpdjpInputDataConfig   :: !(Maybe InputDataConfig)
    , _kpdjpVPCConfig         :: !(Maybe VPCConfig)
    , _kpdjpVolumeKMSKeyId    :: !(Maybe Text)
    , _kpdjpEndTime           :: !(Maybe POSIX)
    , _kpdjpOutputDataConfig  :: !(Maybe OutputDataConfig)
    , _kpdjpDataAccessRoleARN :: !(Maybe Text)
    , _kpdjpJobStatus         :: !(Maybe JobStatus)
    , _kpdjpMessage           :: !(Maybe Text)
    , _kpdjpSubmitTime        :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'KeyPhrasesDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kpdjpLanguageCode' - The language code of the input documents.
--
-- * 'kpdjpJobId' - The identifier assigned to the key phrases detection job.
--
-- * 'kpdjpJobName' - The name that you assigned the key phrases detection job.
--
-- * 'kpdjpInputDataConfig' - The input data configuration that you supplied when you created the key phrases detection job.
--
-- * 'kpdjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your key phrases detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'kpdjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'kpdjpEndTime' - The time that the key phrases detection job completed.
--
-- * 'kpdjpOutputDataConfig' - The output data configuration that you supplied when you created the key phrases detection job.
--
-- * 'kpdjpDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'kpdjpJobStatus' - The current status of the key phrases detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
--
-- * 'kpdjpMessage' - A description of the status of a job.
--
-- * 'kpdjpSubmitTime' - The time that the key phrases detection job was submitted for processing.
keyPhrasesDetectionJobProperties
    :: KeyPhrasesDetectionJobProperties
keyPhrasesDetectionJobProperties =
  KeyPhrasesDetectionJobProperties'
    { _kpdjpLanguageCode = Nothing
    , _kpdjpJobId = Nothing
    , _kpdjpJobName = Nothing
    , _kpdjpInputDataConfig = Nothing
    , _kpdjpVPCConfig = Nothing
    , _kpdjpVolumeKMSKeyId = Nothing
    , _kpdjpEndTime = Nothing
    , _kpdjpOutputDataConfig = Nothing
    , _kpdjpDataAccessRoleARN = Nothing
    , _kpdjpJobStatus = Nothing
    , _kpdjpMessage = Nothing
    , _kpdjpSubmitTime = Nothing
    }


-- | The language code of the input documents.
kpdjpLanguageCode :: Lens' KeyPhrasesDetectionJobProperties (Maybe LanguageCode)
kpdjpLanguageCode = lens _kpdjpLanguageCode (\ s a -> s{_kpdjpLanguageCode = a})

-- | The identifier assigned to the key phrases detection job.
kpdjpJobId :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpJobId = lens _kpdjpJobId (\ s a -> s{_kpdjpJobId = a})

-- | The name that you assigned the key phrases detection job.
kpdjpJobName :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpJobName = lens _kpdjpJobName (\ s a -> s{_kpdjpJobName = a})

-- | The input data configuration that you supplied when you created the key phrases detection job.
kpdjpInputDataConfig :: Lens' KeyPhrasesDetectionJobProperties (Maybe InputDataConfig)
kpdjpInputDataConfig = lens _kpdjpInputDataConfig (\ s a -> s{_kpdjpInputDataConfig = a})

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your key phrases detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
kpdjpVPCConfig :: Lens' KeyPhrasesDetectionJobProperties (Maybe VPCConfig)
kpdjpVPCConfig = lens _kpdjpVPCConfig (\ s a -> s{_kpdjpVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
kpdjpVolumeKMSKeyId :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpVolumeKMSKeyId = lens _kpdjpVolumeKMSKeyId (\ s a -> s{_kpdjpVolumeKMSKeyId = a})

-- | The time that the key phrases detection job completed.
kpdjpEndTime :: Lens' KeyPhrasesDetectionJobProperties (Maybe UTCTime)
kpdjpEndTime = lens _kpdjpEndTime (\ s a -> s{_kpdjpEndTime = a}) . mapping _Time

-- | The output data configuration that you supplied when you created the key phrases detection job.
kpdjpOutputDataConfig :: Lens' KeyPhrasesDetectionJobProperties (Maybe OutputDataConfig)
kpdjpOutputDataConfig = lens _kpdjpOutputDataConfig (\ s a -> s{_kpdjpOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
kpdjpDataAccessRoleARN :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpDataAccessRoleARN = lens _kpdjpDataAccessRoleARN (\ s a -> s{_kpdjpDataAccessRoleARN = a})

-- | The current status of the key phrases detection job. If the status is @FAILED@ , the @Message@ field shows the reason for the failure.
kpdjpJobStatus :: Lens' KeyPhrasesDetectionJobProperties (Maybe JobStatus)
kpdjpJobStatus = lens _kpdjpJobStatus (\ s a -> s{_kpdjpJobStatus = a})

-- | A description of the status of a job.
kpdjpMessage :: Lens' KeyPhrasesDetectionJobProperties (Maybe Text)
kpdjpMessage = lens _kpdjpMessage (\ s a -> s{_kpdjpMessage = a})

-- | The time that the key phrases detection job was submitted for processing.
kpdjpSubmitTime :: Lens' KeyPhrasesDetectionJobProperties (Maybe UTCTime)
kpdjpSubmitTime = lens _kpdjpSubmitTime (\ s a -> s{_kpdjpSubmitTime = a}) . mapping _Time

instance FromJSON KeyPhrasesDetectionJobProperties
         where
        parseJSON
          = withObject "KeyPhrasesDetectionJobProperties"
              (\ x ->
                 KeyPhrasesDetectionJobProperties' <$>
                   (x .:? "LanguageCode") <*> (x .:? "JobId") <*>
                     (x .:? "JobName")
                     <*> (x .:? "InputDataConfig")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "VolumeKmsKeyId")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "OutputDataConfig")
                     <*> (x .:? "DataAccessRoleArn")
                     <*> (x .:? "JobStatus")
                     <*> (x .:? "Message")
                     <*> (x .:? "SubmitTime"))

instance Hashable KeyPhrasesDetectionJobProperties
         where

instance NFData KeyPhrasesDetectionJobProperties
         where

-- | Provides configuration parameters for the output of topic detection jobs.
--
--
--
--
--
-- /See:/ 'outputDataConfig' smart constructor.
data OutputDataConfig =
  OutputDataConfig'
    { _odcKMSKeyId :: !(Maybe Text)
    , _odcS3URI    :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'OutputDataConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odcKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the output results from an analysis job. The KmsKeyId can be one of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@      * KMS Key Alias: @"alias/ExampleAlias"@      * ARN of a KMS Key Alias: @"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"@
--
-- * 'odcS3URI' - When you use the @OutputDataConfig@ object with asynchronous operations, you specify the Amazon S3 location where you want to write the output data. The URI must be in the same region as the API endpoint that you are calling. The location is used as the prefix for the actual location of the output file. When the topic detection job is finished, the service creates an output file in a directory specific to the job. The @S3Uri@ field contains the location of the output file, called @output.tar.gz@ . It is a compressed archive that contains the ouput of the operation.
outputDataConfig
    :: Text -- ^ 'odcS3URI'
    -> OutputDataConfig
outputDataConfig pS3URI_ =
  OutputDataConfig' {_odcKMSKeyId = Nothing, _odcS3URI = pS3URI_}


-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the output results from an analysis job. The KmsKeyId can be one of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@      * KMS Key Alias: @"alias/ExampleAlias"@      * ARN of a KMS Key Alias: @"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"@
odcKMSKeyId :: Lens' OutputDataConfig (Maybe Text)
odcKMSKeyId = lens _odcKMSKeyId (\ s a -> s{_odcKMSKeyId = a})

-- | When you use the @OutputDataConfig@ object with asynchronous operations, you specify the Amazon S3 location where you want to write the output data. The URI must be in the same region as the API endpoint that you are calling. The location is used as the prefix for the actual location of the output file. When the topic detection job is finished, the service creates an output file in a directory specific to the job. The @S3Uri@ field contains the location of the output file, called @output.tar.gz@ . It is a compressed archive that contains the ouput of the operation.
odcS3URI :: Lens' OutputDataConfig Text
odcS3URI = lens _odcS3URI (\ s a -> s{_odcS3URI = a})

instance FromJSON OutputDataConfig where
        parseJSON
          = withObject "OutputDataConfig"
              (\ x ->
                 OutputDataConfig' <$>
                   (x .:? "KmsKeyId") <*> (x .: "S3Uri"))

instance Hashable OutputDataConfig where

instance NFData OutputDataConfig where

instance ToJSON OutputDataConfig where
        toJSON OutputDataConfig'{..}
          = object
              (catMaybes
                 [("KmsKeyId" .=) <$> _odcKMSKeyId,
                  Just ("S3Uri" .= _odcS3URI)])

-- | Identifies the part of speech represented by the token and gives the confidence that Amazon Comprehend has that the part of speech was correctly identified. For more information about the parts of speech that Amazon Comprehend can identify, see 'how-syntax' .
--
--
--
-- /See:/ 'partOfSpeechTag' smart constructor.
data PartOfSpeechTag =
  PartOfSpeechTag'
    { _postTag   :: !(Maybe PartOfSpeechTagType)
    , _postScore :: !(Maybe Double)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'PartOfSpeechTag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'postTag' - Identifies the part of speech that the token represents.
--
-- * 'postScore' - The confidence that Amazon Comprehend has that the part of speech was correctly identified.
partOfSpeechTag
    :: PartOfSpeechTag
partOfSpeechTag = PartOfSpeechTag' {_postTag = Nothing, _postScore = Nothing}


-- | Identifies the part of speech that the token represents.
postTag :: Lens' PartOfSpeechTag (Maybe PartOfSpeechTagType)
postTag = lens _postTag (\ s a -> s{_postTag = a})

-- | The confidence that Amazon Comprehend has that the part of speech was correctly identified.
postScore :: Lens' PartOfSpeechTag (Maybe Double)
postScore = lens _postScore (\ s a -> s{_postScore = a})

instance FromJSON PartOfSpeechTag where
        parseJSON
          = withObject "PartOfSpeechTag"
              (\ x ->
                 PartOfSpeechTag' <$>
                   (x .:? "Tag") <*> (x .:? "Score"))

instance Hashable PartOfSpeechTag where

instance NFData PartOfSpeechTag where

-- | Provides information for filtering a list of dominant language detection jobs. For more information, see the operation.
--
--
--
-- /See:/ 'sentimentDetectionJobFilter' smart constructor.
data SentimentDetectionJobFilter =
  SentimentDetectionJobFilter'
    { _sdjfSubmitTimeAfter  :: !(Maybe POSIX)
    , _sdjfSubmitTimeBefore :: !(Maybe POSIX)
    , _sdjfJobName          :: !(Maybe Text)
    , _sdjfJobStatus        :: !(Maybe JobStatus)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SentimentDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'sdjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'sdjfJobName' - Filters on the name of the job.
--
-- * 'sdjfJobStatus' - Filters the list of jobs based on job status. Returns only jobs with the specified status.
sentimentDetectionJobFilter
    :: SentimentDetectionJobFilter
sentimentDetectionJobFilter =
  SentimentDetectionJobFilter'
    { _sdjfSubmitTimeAfter = Nothing
    , _sdjfSubmitTimeBefore = Nothing
    , _sdjfJobName = Nothing
    , _sdjfJobStatus = Nothing
    }


-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.
sdjfSubmitTimeAfter :: Lens' SentimentDetectionJobFilter (Maybe UTCTime)
sdjfSubmitTimeAfter = lens _sdjfSubmitTimeAfter (\ s a -> s{_sdjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Returns only jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.
sdjfSubmitTimeBefore :: Lens' SentimentDetectionJobFilter (Maybe UTCTime)
sdjfSubmitTimeBefore = lens _sdjfSubmitTimeBefore (\ s a -> s{_sdjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters on the name of the job.
sdjfJobName :: Lens' SentimentDetectionJobFilter (Maybe Text)
sdjfJobName = lens _sdjfJobName (\ s a -> s{_sdjfJobName = a})

-- | Filters the list of jobs based on job status. Returns only jobs with the specified status.
sdjfJobStatus :: Lens' SentimentDetectionJobFilter (Maybe JobStatus)
sdjfJobStatus = lens _sdjfJobStatus (\ s a -> s{_sdjfJobStatus = a})

instance Hashable SentimentDetectionJobFilter where

instance NFData SentimentDetectionJobFilter where

instance ToJSON SentimentDetectionJobFilter where
        toJSON SentimentDetectionJobFilter'{..}
          = object
              (catMaybes
                 [("SubmitTimeAfter" .=) <$> _sdjfSubmitTimeAfter,
                  ("SubmitTimeBefore" .=) <$> _sdjfSubmitTimeBefore,
                  ("JobName" .=) <$> _sdjfJobName,
                  ("JobStatus" .=) <$> _sdjfJobStatus])

-- | Provides information about a sentiment detection job.
--
--
--
-- /See:/ 'sentimentDetectionJobProperties' smart constructor.
data SentimentDetectionJobProperties =
  SentimentDetectionJobProperties'
    { _sdjpLanguageCode      :: !(Maybe LanguageCode)
    , _sdjpJobId             :: !(Maybe Text)
    , _sdjpJobName           :: !(Maybe Text)
    , _sdjpInputDataConfig   :: !(Maybe InputDataConfig)
    , _sdjpVPCConfig         :: !(Maybe VPCConfig)
    , _sdjpVolumeKMSKeyId    :: !(Maybe Text)
    , _sdjpEndTime           :: !(Maybe POSIX)
    , _sdjpOutputDataConfig  :: !(Maybe OutputDataConfig)
    , _sdjpDataAccessRoleARN :: !(Maybe Text)
    , _sdjpJobStatus         :: !(Maybe JobStatus)
    , _sdjpMessage           :: !(Maybe Text)
    , _sdjpSubmitTime        :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SentimentDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdjpLanguageCode' - The language code of the input documents.
--
-- * 'sdjpJobId' - The identifier assigned to the sentiment detection job.
--
-- * 'sdjpJobName' - The name that you assigned to the sentiment detection job
--
-- * 'sdjpInputDataConfig' - The input data configuration that you supplied when you created the sentiment detection job.
--
-- * 'sdjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your sentiment detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'sdjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'sdjpEndTime' - The time that the sentiment detection job ended.
--
-- * 'sdjpOutputDataConfig' - The output data configuration that you supplied when you created the sentiment detection job.
--
-- * 'sdjpDataAccessRoleARN' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
--
-- * 'sdjpJobStatus' - The current status of the sentiment detection job. If the status is @FAILED@ , the @Messages@ field shows the reason for the failure.
--
-- * 'sdjpMessage' - A description of the status of a job.
--
-- * 'sdjpSubmitTime' - The time that the sentiment detection job was submitted for processing.
sentimentDetectionJobProperties
    :: SentimentDetectionJobProperties
sentimentDetectionJobProperties =
  SentimentDetectionJobProperties'
    { _sdjpLanguageCode = Nothing
    , _sdjpJobId = Nothing
    , _sdjpJobName = Nothing
    , _sdjpInputDataConfig = Nothing
    , _sdjpVPCConfig = Nothing
    , _sdjpVolumeKMSKeyId = Nothing
    , _sdjpEndTime = Nothing
    , _sdjpOutputDataConfig = Nothing
    , _sdjpDataAccessRoleARN = Nothing
    , _sdjpJobStatus = Nothing
    , _sdjpMessage = Nothing
    , _sdjpSubmitTime = Nothing
    }


-- | The language code of the input documents.
sdjpLanguageCode :: Lens' SentimentDetectionJobProperties (Maybe LanguageCode)
sdjpLanguageCode = lens _sdjpLanguageCode (\ s a -> s{_sdjpLanguageCode = a})

-- | The identifier assigned to the sentiment detection job.
sdjpJobId :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpJobId = lens _sdjpJobId (\ s a -> s{_sdjpJobId = a})

-- | The name that you assigned to the sentiment detection job
sdjpJobName :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpJobName = lens _sdjpJobName (\ s a -> s{_sdjpJobName = a})

-- | The input data configuration that you supplied when you created the sentiment detection job.
sdjpInputDataConfig :: Lens' SentimentDetectionJobProperties (Maybe InputDataConfig)
sdjpInputDataConfig = lens _sdjpInputDataConfig (\ s a -> s{_sdjpInputDataConfig = a})

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your sentiment detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
sdjpVPCConfig :: Lens' SentimentDetectionJobProperties (Maybe VPCConfig)
sdjpVPCConfig = lens _sdjpVPCConfig (\ s a -> s{_sdjpVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
sdjpVolumeKMSKeyId :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpVolumeKMSKeyId = lens _sdjpVolumeKMSKeyId (\ s a -> s{_sdjpVolumeKMSKeyId = a})

-- | The time that the sentiment detection job ended.
sdjpEndTime :: Lens' SentimentDetectionJobProperties (Maybe UTCTime)
sdjpEndTime = lens _sdjpEndTime (\ s a -> s{_sdjpEndTime = a}) . mapping _Time

-- | The output data configuration that you supplied when you created the sentiment detection job.
sdjpOutputDataConfig :: Lens' SentimentDetectionJobProperties (Maybe OutputDataConfig)
sdjpOutputDataConfig = lens _sdjpOutputDataConfig (\ s a -> s{_sdjpOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access to your input data.
sdjpDataAccessRoleARN :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpDataAccessRoleARN = lens _sdjpDataAccessRoleARN (\ s a -> s{_sdjpDataAccessRoleARN = a})

-- | The current status of the sentiment detection job. If the status is @FAILED@ , the @Messages@ field shows the reason for the failure.
sdjpJobStatus :: Lens' SentimentDetectionJobProperties (Maybe JobStatus)
sdjpJobStatus = lens _sdjpJobStatus (\ s a -> s{_sdjpJobStatus = a})

-- | A description of the status of a job.
sdjpMessage :: Lens' SentimentDetectionJobProperties (Maybe Text)
sdjpMessage = lens _sdjpMessage (\ s a -> s{_sdjpMessage = a})

-- | The time that the sentiment detection job was submitted for processing.
sdjpSubmitTime :: Lens' SentimentDetectionJobProperties (Maybe UTCTime)
sdjpSubmitTime = lens _sdjpSubmitTime (\ s a -> s{_sdjpSubmitTime = a}) . mapping _Time

instance FromJSON SentimentDetectionJobProperties
         where
        parseJSON
          = withObject "SentimentDetectionJobProperties"
              (\ x ->
                 SentimentDetectionJobProperties' <$>
                   (x .:? "LanguageCode") <*> (x .:? "JobId") <*>
                     (x .:? "JobName")
                     <*> (x .:? "InputDataConfig")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "VolumeKmsKeyId")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "OutputDataConfig")
                     <*> (x .:? "DataAccessRoleArn")
                     <*> (x .:? "JobStatus")
                     <*> (x .:? "Message")
                     <*> (x .:? "SubmitTime"))

instance Hashable SentimentDetectionJobProperties
         where

instance NFData SentimentDetectionJobProperties where

-- | Describes the level of confidence that Amazon Comprehend has in the accuracy of its detection of sentiments.
--
--
--
-- /See:/ 'sentimentScore' smart constructor.
data SentimentScore =
  SentimentScore'
    { _ssMixed    :: !(Maybe Double)
    , _ssNegative :: !(Maybe Double)
    , _ssNeutral  :: !(Maybe Double)
    , _ssPositive :: !(Maybe Double)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SentimentScore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssMixed' - The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @MIXED@ sentiment.
--
-- * 'ssNegative' - The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @NEGATIVE@ sentiment.
--
-- * 'ssNeutral' - The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @NEUTRAL@ sentiment.
--
-- * 'ssPositive' - The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @POSITIVE@ sentiment.
sentimentScore
    :: SentimentScore
sentimentScore =
  SentimentScore'
    { _ssMixed = Nothing
    , _ssNegative = Nothing
    , _ssNeutral = Nothing
    , _ssPositive = Nothing
    }


-- | The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @MIXED@ sentiment.
ssMixed :: Lens' SentimentScore (Maybe Double)
ssMixed = lens _ssMixed (\ s a -> s{_ssMixed = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @NEGATIVE@ sentiment.
ssNegative :: Lens' SentimentScore (Maybe Double)
ssNegative = lens _ssNegative (\ s a -> s{_ssNegative = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @NEUTRAL@ sentiment.
ssNeutral :: Lens' SentimentScore (Maybe Double)
ssNeutral = lens _ssNeutral (\ s a -> s{_ssNeutral = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of its detection of the @POSITIVE@ sentiment.
ssPositive :: Lens' SentimentScore (Maybe Double)
ssPositive = lens _ssPositive (\ s a -> s{_ssPositive = a})

instance FromJSON SentimentScore where
        parseJSON
          = withObject "SentimentScore"
              (\ x ->
                 SentimentScore' <$>
                   (x .:? "Mixed") <*> (x .:? "Negative") <*>
                     (x .:? "Neutral")
                     <*> (x .:? "Positive"))

instance Hashable SentimentScore where

instance NFData SentimentScore where

-- | Represents a work in the input text that was recognized and assigned a part of speech. There is one syntax token record for each word in the source text.
--
--
--
-- /See:/ 'syntaxToken' smart constructor.
data SyntaxToken =
  SyntaxToken'
    { _stBeginOffset  :: !(Maybe Int)
    , _stText         :: !(Maybe Text)
    , _stTokenId      :: !(Maybe Int)
    , _stEndOffset    :: !(Maybe Int)
    , _stPartOfSpeech :: !(Maybe PartOfSpeechTag)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'SyntaxToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stBeginOffset' - The zero-based offset from the beginning of the source text to the first character in the word.
--
-- * 'stText' - The word that was recognized in the source text.
--
-- * 'stTokenId' - A unique identifier for a token.
--
-- * 'stEndOffset' - The zero-based offset from the beginning of the source text to the last character in the word.
--
-- * 'stPartOfSpeech' - Provides the part of speech label and the confidence level that Amazon Comprehend has that the part of speech was correctly identified. For more information, see 'how-syntax' .
syntaxToken
    :: SyntaxToken
syntaxToken =
  SyntaxToken'
    { _stBeginOffset = Nothing
    , _stText = Nothing
    , _stTokenId = Nothing
    , _stEndOffset = Nothing
    , _stPartOfSpeech = Nothing
    }


-- | The zero-based offset from the beginning of the source text to the first character in the word.
stBeginOffset :: Lens' SyntaxToken (Maybe Int)
stBeginOffset = lens _stBeginOffset (\ s a -> s{_stBeginOffset = a})

-- | The word that was recognized in the source text.
stText :: Lens' SyntaxToken (Maybe Text)
stText = lens _stText (\ s a -> s{_stText = a})

-- | A unique identifier for a token.
stTokenId :: Lens' SyntaxToken (Maybe Int)
stTokenId = lens _stTokenId (\ s a -> s{_stTokenId = a})

-- | The zero-based offset from the beginning of the source text to the last character in the word.
stEndOffset :: Lens' SyntaxToken (Maybe Int)
stEndOffset = lens _stEndOffset (\ s a -> s{_stEndOffset = a})

-- | Provides the part of speech label and the confidence level that Amazon Comprehend has that the part of speech was correctly identified. For more information, see 'how-syntax' .
stPartOfSpeech :: Lens' SyntaxToken (Maybe PartOfSpeechTag)
stPartOfSpeech = lens _stPartOfSpeech (\ s a -> s{_stPartOfSpeech = a})

instance FromJSON SyntaxToken where
        parseJSON
          = withObject "SyntaxToken"
              (\ x ->
                 SyntaxToken' <$>
                   (x .:? "BeginOffset") <*> (x .:? "Text") <*>
                     (x .:? "TokenId")
                     <*> (x .:? "EndOffset")
                     <*> (x .:? "PartOfSpeech"))

instance Hashable SyntaxToken where

instance NFData SyntaxToken where

-- | A key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with the key-value pair ‘Department’:’Sales’ might be added to a resource to indicate its use by a particular department.
--
--
--
-- /See:/ 'tag' smart constructor.
data Tag =
  Tag'
    { _tagValue :: !(Maybe Text)
    , _tagKey   :: !Text
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagValue' - The second part of a key-value pair that forms a tag associated with a given resource. For instance, if you want to show which resources are used by which departments, you might use “Department” as the initial (key) portion of the pair, with a value of “sales” to indicate the sales department.
--
-- * 'tagKey' - The initial part of a key-value pair that forms a tag associated with a given resource. For instance, if you want to show which resources are used by which departments, you might use “Department” as the key portion of the pair, with multiple possible values such as “sales,” “legal,” and “administration.”
tag
    :: Text -- ^ 'tagKey'
    -> Tag
tag pKey_ = Tag' {_tagValue = Nothing, _tagKey = pKey_}


-- | The second part of a key-value pair that forms a tag associated with a given resource. For instance, if you want to show which resources are used by which departments, you might use “Department” as the initial (key) portion of the pair, with a value of “sales” to indicate the sales department.
tagValue :: Lens' Tag (Maybe Text)
tagValue = lens _tagValue (\ s a -> s{_tagValue = a})

-- | The initial part of a key-value pair that forms a tag associated with a given resource. For instance, if you want to show which resources are used by which departments, you might use “Department” as the key portion of the pair, with multiple possible values such as “sales,” “legal,” and “administration.”
tagKey :: Lens' Tag Text
tagKey = lens _tagKey (\ s a -> s{_tagKey = a})

instance FromJSON Tag where
        parseJSON
          = withObject "Tag"
              (\ x -> Tag' <$> (x .:? "Value") <*> (x .: "Key"))

instance Hashable Tag where

instance NFData Tag where

instance ToJSON Tag where
        toJSON Tag'{..}
          = object
              (catMaybes
                 [("Value" .=) <$> _tagValue,
                  Just ("Key" .= _tagKey)])

-- | Provides information for filtering topic detection jobs. For more information, see .
--
--
--
-- /See:/ 'topicsDetectionJobFilter' smart constructor.
data TopicsDetectionJobFilter =
  TopicsDetectionJobFilter'
    { _tdjfSubmitTimeAfter  :: !(Maybe POSIX)
    , _tdjfSubmitTimeBefore :: !(Maybe POSIX)
    , _tdjfJobName          :: !(Maybe Text)
    , _tdjfJobStatus        :: !(Maybe JobStatus)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TopicsDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'tdjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'tdjfJobName' -
--
-- * 'tdjfJobStatus' - Filters the list of topic detection jobs based on job status. Returns only jobs with the specified status.
topicsDetectionJobFilter
    :: TopicsDetectionJobFilter
topicsDetectionJobFilter =
  TopicsDetectionJobFilter'
    { _tdjfSubmitTimeAfter = Nothing
    , _tdjfSubmitTimeBefore = Nothing
    , _tdjfJobName = Nothing
    , _tdjfJobStatus = Nothing
    }


-- | Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.
tdjfSubmitTimeAfter :: Lens' TopicsDetectionJobFilter (Maybe UTCTime)
tdjfSubmitTimeAfter = lens _tdjfSubmitTimeAfter (\ s a -> s{_tdjfSubmitTimeAfter = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.
tdjfSubmitTimeBefore :: Lens' TopicsDetectionJobFilter (Maybe UTCTime)
tdjfSubmitTimeBefore = lens _tdjfSubmitTimeBefore (\ s a -> s{_tdjfSubmitTimeBefore = a}) . mapping _Time

-- |
tdjfJobName :: Lens' TopicsDetectionJobFilter (Maybe Text)
tdjfJobName = lens _tdjfJobName (\ s a -> s{_tdjfJobName = a})

-- | Filters the list of topic detection jobs based on job status. Returns only jobs with the specified status.
tdjfJobStatus :: Lens' TopicsDetectionJobFilter (Maybe JobStatus)
tdjfJobStatus = lens _tdjfJobStatus (\ s a -> s{_tdjfJobStatus = a})

instance Hashable TopicsDetectionJobFilter where

instance NFData TopicsDetectionJobFilter where

instance ToJSON TopicsDetectionJobFilter where
        toJSON TopicsDetectionJobFilter'{..}
          = object
              (catMaybes
                 [("SubmitTimeAfter" .=) <$> _tdjfSubmitTimeAfter,
                  ("SubmitTimeBefore" .=) <$> _tdjfSubmitTimeBefore,
                  ("JobName" .=) <$> _tdjfJobName,
                  ("JobStatus" .=) <$> _tdjfJobStatus])

-- | Provides information about a topic detection job.
--
--
--
-- /See:/ 'topicsDetectionJobProperties' smart constructor.
data TopicsDetectionJobProperties =
  TopicsDetectionJobProperties'
    { _tdjpJobId             :: !(Maybe Text)
    , _tdjpJobName           :: !(Maybe Text)
    , _tdjpInputDataConfig   :: !(Maybe InputDataConfig)
    , _tdjpVPCConfig         :: !(Maybe VPCConfig)
    , _tdjpVolumeKMSKeyId    :: !(Maybe Text)
    , _tdjpEndTime           :: !(Maybe POSIX)
    , _tdjpOutputDataConfig  :: !(Maybe OutputDataConfig)
    , _tdjpDataAccessRoleARN :: !(Maybe Text)
    , _tdjpNumberOfTopics    :: !(Maybe Int)
    , _tdjpJobStatus         :: !(Maybe JobStatus)
    , _tdjpMessage           :: !(Maybe Text)
    , _tdjpSubmitTime        :: !(Maybe POSIX)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'TopicsDetectionJobProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdjpJobId' - The identifier assigned to the topic detection job.
--
-- * 'tdjpJobName' - The name of the topic detection job.
--
-- * 'tdjpInputDataConfig' - The input data configuration supplied when you created the topic detection job.
--
-- * 'tdjpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your topic detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'tdjpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'tdjpEndTime' - The time that the topic detection job was completed.
--
-- * 'tdjpOutputDataConfig' - The output data configuration supplied when you created the topic detection job.
--
-- * 'tdjpDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your job data.
--
-- * 'tdjpNumberOfTopics' - The number of topics to detect supplied when you created the topic detection job. The default is 10.
--
-- * 'tdjpJobStatus' - The current status of the topic detection job. If the status is @Failed@ , the reason for the failure is shown in the @Message@ field.
--
-- * 'tdjpMessage' - A description for the status of a job.
--
-- * 'tdjpSubmitTime' - The time that the topic detection job was submitted for processing.
topicsDetectionJobProperties
    :: TopicsDetectionJobProperties
topicsDetectionJobProperties =
  TopicsDetectionJobProperties'
    { _tdjpJobId = Nothing
    , _tdjpJobName = Nothing
    , _tdjpInputDataConfig = Nothing
    , _tdjpVPCConfig = Nothing
    , _tdjpVolumeKMSKeyId = Nothing
    , _tdjpEndTime = Nothing
    , _tdjpOutputDataConfig = Nothing
    , _tdjpDataAccessRoleARN = Nothing
    , _tdjpNumberOfTopics = Nothing
    , _tdjpJobStatus = Nothing
    , _tdjpMessage = Nothing
    , _tdjpSubmitTime = Nothing
    }


-- | The identifier assigned to the topic detection job.
tdjpJobId :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpJobId = lens _tdjpJobId (\ s a -> s{_tdjpJobId = a})

-- | The name of the topic detection job.
tdjpJobName :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpJobName = lens _tdjpJobName (\ s a -> s{_tdjpJobName = a})

-- | The input data configuration supplied when you created the topic detection job.
tdjpInputDataConfig :: Lens' TopicsDetectionJobProperties (Maybe InputDataConfig)
tdjpInputDataConfig = lens _tdjpInputDataConfig (\ s a -> s{_tdjpInputDataConfig = a})

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your topic detection job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
tdjpVPCConfig :: Lens' TopicsDetectionJobProperties (Maybe VPCConfig)
tdjpVPCConfig = lens _tdjpVPCConfig (\ s a -> s{_tdjpVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
tdjpVolumeKMSKeyId :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpVolumeKMSKeyId = lens _tdjpVolumeKMSKeyId (\ s a -> s{_tdjpVolumeKMSKeyId = a})

-- | The time that the topic detection job was completed.
tdjpEndTime :: Lens' TopicsDetectionJobProperties (Maybe UTCTime)
tdjpEndTime = lens _tdjpEndTime (\ s a -> s{_tdjpEndTime = a}) . mapping _Time

-- | The output data configuration supplied when you created the topic detection job.
tdjpOutputDataConfig :: Lens' TopicsDetectionJobProperties (Maybe OutputDataConfig)
tdjpOutputDataConfig = lens _tdjpOutputDataConfig (\ s a -> s{_tdjpOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your job data.
tdjpDataAccessRoleARN :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpDataAccessRoleARN = lens _tdjpDataAccessRoleARN (\ s a -> s{_tdjpDataAccessRoleARN = a})

-- | The number of topics to detect supplied when you created the topic detection job. The default is 10.
tdjpNumberOfTopics :: Lens' TopicsDetectionJobProperties (Maybe Int)
tdjpNumberOfTopics = lens _tdjpNumberOfTopics (\ s a -> s{_tdjpNumberOfTopics = a})

-- | The current status of the topic detection job. If the status is @Failed@ , the reason for the failure is shown in the @Message@ field.
tdjpJobStatus :: Lens' TopicsDetectionJobProperties (Maybe JobStatus)
tdjpJobStatus = lens _tdjpJobStatus (\ s a -> s{_tdjpJobStatus = a})

-- | A description for the status of a job.
tdjpMessage :: Lens' TopicsDetectionJobProperties (Maybe Text)
tdjpMessage = lens _tdjpMessage (\ s a -> s{_tdjpMessage = a})

-- | The time that the topic detection job was submitted for processing.
tdjpSubmitTime :: Lens' TopicsDetectionJobProperties (Maybe UTCTime)
tdjpSubmitTime = lens _tdjpSubmitTime (\ s a -> s{_tdjpSubmitTime = a}) . mapping _Time

instance FromJSON TopicsDetectionJobProperties where
        parseJSON
          = withObject "TopicsDetectionJobProperties"
              (\ x ->
                 TopicsDetectionJobProperties' <$>
                   (x .:? "JobId") <*> (x .:? "JobName") <*>
                     (x .:? "InputDataConfig")
                     <*> (x .:? "VpcConfig")
                     <*> (x .:? "VolumeKmsKeyId")
                     <*> (x .:? "EndTime")
                     <*> (x .:? "OutputDataConfig")
                     <*> (x .:? "DataAccessRoleArn")
                     <*> (x .:? "NumberOfTopics")
                     <*> (x .:? "JobStatus")
                     <*> (x .:? "Message")
                     <*> (x .:? "SubmitTime"))

instance Hashable TopicsDetectionJobProperties where

instance NFData TopicsDetectionJobProperties where

-- | Configuration parameters for an optional private Virtual Private Cloud (VPC) containing the resources you are using for the job. For For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
--
--
-- /See:/ 'vpcConfig' smart constructor.
data VPCConfig =
  VPCConfig'
    { _vcSecurityGroupIds :: !(List1 Text)
    , _vcSubnets          :: !(List1 Text)
    }
  deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPCConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcSecurityGroupIds' - The ID number for a security group on an instance of your private VPC. Security groups on your VPC function serve as a virtual firewall to control inbound and outbound traffic and provides security for the resources that you’ll be accessing on the VPC. This ID number is preceded by "sg-", for instance: "sg-03b388029b0a285ea". For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html Security Groups for your VPC> .
--
-- * 'vcSubnets' - The ID for each subnet being used in your private VPC. This subnet is a subset of the a range of IPv4 addresses used by the VPC and is specific to a given availability zone in the VPC’s region. This ID number is preceded by "subnet-", for instance: "subnet-04ccf456919e69055". For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html VPCs and Subnets> .
vpcConfig
    :: NonEmpty Text -- ^ 'vcSecurityGroupIds'
    -> NonEmpty Text -- ^ 'vcSubnets'
    -> VPCConfig
vpcConfig pSecurityGroupIds_ pSubnets_ =
  VPCConfig'
    { _vcSecurityGroupIds = _List1 # pSecurityGroupIds_
    , _vcSubnets = _List1 # pSubnets_
    }


-- | The ID number for a security group on an instance of your private VPC. Security groups on your VPC function serve as a virtual firewall to control inbound and outbound traffic and provides security for the resources that you’ll be accessing on the VPC. This ID number is preceded by "sg-", for instance: "sg-03b388029b0a285ea". For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html Security Groups for your VPC> .
vcSecurityGroupIds :: Lens' VPCConfig (NonEmpty Text)
vcSecurityGroupIds = lens _vcSecurityGroupIds (\ s a -> s{_vcSecurityGroupIds = a}) . _List1

-- | The ID for each subnet being used in your private VPC. This subnet is a subset of the a range of IPv4 addresses used by the VPC and is specific to a given availability zone in the VPC’s region. This ID number is preceded by "subnet-", for instance: "subnet-04ccf456919e69055". For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html VPCs and Subnets> .
vcSubnets :: Lens' VPCConfig (NonEmpty Text)
vcSubnets = lens _vcSubnets (\ s a -> s{_vcSubnets = a}) . _List1

instance FromJSON VPCConfig where
        parseJSON
          = withObject "VPCConfig"
              (\ x ->
                 VPCConfig' <$>
                   (x .: "SecurityGroupIds") <*> (x .: "Subnets"))

instance Hashable VPCConfig where

instance NFData VPCConfig where

instance ToJSON VPCConfig where
        toJSON VPCConfig'{..}
          = object
              (catMaybes
                 [Just ("SecurityGroupIds" .= _vcSecurityGroupIds),
                  Just ("Subnets" .= _vcSubnets)])
