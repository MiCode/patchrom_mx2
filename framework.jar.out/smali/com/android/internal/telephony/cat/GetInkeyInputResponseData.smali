.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 82
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 83
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 94
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 95
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 13
    .parameter "buf"

    .prologue
    .line 99
    if-nez p1, :cond_1

    .line 172
    :cond_0
    return-void

    .line 103
    :cond_1
    const/4 v4, 0x0

    .line 106
    .local v4, fakeUcs2:Z
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v10

    or-int/lit16 v8, v10, 0x80

    .line 107
    .local v8, tag:I
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v10, :cond_4

    .line 112
    const/4 v10, 0x1

    new-array v2, v10, [B

    .line 113
    .local v2, data:[B
    const/4 v11, 0x0

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_0
    aput-byte v10, v2, v11

    .line 153
    :cond_2
    :goto_1
    array-length v10, v2

    add-int/lit8 v10, v10, 0x1

    invoke-static {p1, v10}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 156
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v10, :cond_8

    .line 157
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    :goto_2
    move-object v0, v2

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_0

    aget-byte v1, v0, v5

    .line 170
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 113
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 114
    .end local v2           #data:[B
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 116
    :try_start_0
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v10, :cond_5

    .line 122
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string/jumbo v11, "utf-16be"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .line 123
    .end local v2           #data:[B
    :cond_5
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v10, :cond_6

    .line 124
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    .line 126
    .local v7, size:I
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v9

    .line 128
    .local v9, tempData:[B
    new-array v2, v7, [B

    .line 132
    .restart local v2       #data:[B
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 143
    .end local v2           #data:[B
    .end local v7           #size:I
    .end local v9           #tempData:[B
    :catch_0
    move-exception v3

    .line 144
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const/4 v10, 0x0

    new-array v2, v10, [B

    .line 147
    .restart local v2       #data:[B
    goto :goto_1

    .line 135
    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPackedChecked(Ljava/lang/String;)[B

    move-result-object v2

    .line 136
    .restart local v2       #data:[B
    if-nez v2, :cond_2

    .line 138
    iget-object v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string/jumbo v11, "utf-16be"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 139
    const/4 v4, 0x1

    goto :goto_1

    .line 145
    .end local v2           #data:[B
    :catch_1
    move-exception v3

    .line 146
    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    const/4 v10, 0x0

    new-array v2, v10, [B

    .line 147
    .restart local v2       #data:[B
    goto :goto_1

    .line 149
    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_7
    const/4 v10, 0x0

    new-array v2, v10, [B

    .restart local v2       #data:[B
    goto :goto_1

    .line 158
    :cond_8
    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v10, :cond_9

    .line 159
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 162
    :cond_9
    if-eqz v4, :cond_a

    .line 163
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 166
    :cond_a
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method
