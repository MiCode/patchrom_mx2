.class Lcom/android/camera/Util$ImageFileNamer;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mLastDate:J

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 824
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 825
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    .line 826
    return-void
.end method


# virtual methods
.method public generateName(J)Ljava/lang/String;
    .locals 12
    .parameter "dateTaken"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x0

    .line 829
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 830
    .local v0, date:Ljava/util/Date;
    iget-object v5, p0, Lcom/android/camera/Util$ImageFileNamer;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, result:Ljava/lang/String;
    div-long v5, p1, v10

    iget-wide v7, p0, Lcom/android/camera/Util$ImageFileNamer;->mLastDate:J

    div-long/2addr v7, v10

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 835
    iget v5, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    .line 836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 842
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 843
    const-string v5, "P"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 844
    .local v2, index:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 845
    const-string v5, "V"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 847
    :cond_0
    if-ltz v2, :cond_1

    .line 848
    const/4 v5, 0x1

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, firLetter:Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 850
    .local v4, tempResult:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 853
    .end local v1           #firLetter:Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #tempResult:Ljava/lang/String;
    :cond_1
    return-object v3

    .line 838
    :cond_2
    iput-wide p1, p0, Lcom/android/camera/Util$ImageFileNamer;->mLastDate:J

    .line 839
    iput v9, p0, Lcom/android/camera/Util$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method
