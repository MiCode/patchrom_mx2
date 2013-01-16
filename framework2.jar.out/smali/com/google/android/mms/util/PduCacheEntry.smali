.class public final Lcom/google/android/mms/util/PduCacheEntry;
.super Ljava/lang/Object;
.source "PduCacheEntry.java"


# instance fields
.field private mFileLink:Ljava/lang/String;

.field private final mMessageBox:I

.field private mMmsDescription:Ljava/lang/String;

.field private final mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    .locals 0
    .parameter "pdu"
    .parameter "msgBox"
    .parameter "threadId"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 32
    iput p2, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    .line 33
    iput-wide p3, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/android/mms/pdu/GenericPdu;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pdu"
    .parameter "msgBox"
    .parameter "threadId"
    .parameter "fileLink"
    .parameter "mmsDescription"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    .line 38
    iput-object p5, p0, Lcom/google/android/mms/util/PduCacheEntry;->mFileLink:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMmsDescription:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getFileLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mFileLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBox()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    return v0
.end method

.method public getMmsDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMmsDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    return-wide v0
.end method
