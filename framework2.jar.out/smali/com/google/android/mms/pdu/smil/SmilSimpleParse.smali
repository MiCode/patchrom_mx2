.class public Lcom/google/android/mms/pdu/smil/SmilSimpleParse;
.super Ljava/lang/Object;
.source "SmilSimpleParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;,
        Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
    }
.end annotation


# static fields
.field public static final AUDIO_FLAG:I = 0x1000

.field public static final ELEMENT_TAG_AUDIO:Ljava/lang/String; = "audio"

.field public static final ELEMENT_TAG_AUDIO_INDEX:I = 0x3

.field public static final ELEMENT_TAG_FILE:Ljava/lang/String; = "file"

.field public static final ELEMENT_TAG_FILE_INDEX:I = 0x7

.field public static final ELEMENT_TAG_IMAGE:Ljava/lang/String; = "img"

.field public static final ELEMENT_TAG_IMAGE_INDEX:I = 0x1

.field public static final ELEMENT_TAG_REF:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_REF_INDEX:I = 0x5

.field public static final ELEMENT_TAG_TALK:Ljava/lang/String; = "talk"

.field public static final ELEMENT_TAG_TALK_INDEX:I = 0x6

.field public static final ELEMENT_TAG_TEXT:Ljava/lang/String; = "text"

.field public static final ELEMENT_TAG_TEXT_INDEX:I = 0x0

.field public static final ELEMENT_TAG_VCARD:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_VCARD_INDEX:I = 0x4

.field public static final ELEMENT_TAG_VIDEO:Ljava/lang/String; = "video"

.field public static final ELEMENT_TAG_VIDEO_INDEX:I = 0x2

.field public static final FILE_FLAG:I = 0x1000000

.field public static final IMAGE_FLAG:I = 0x10

.field public static final M8_VCARD_STREAM:Ljava/lang/String; = "image/tiff"

.field public static final NONE_FLAGS:I = 0x0

.field public static final OCT_STREAM:Ljava/lang/String; = "application/oct-stream"

.field public static final SEPARATE_FIRST:Ljava/lang/String; = ";"

.field public static final SEPARATE_SECOND:Ljava/lang/String; = "#"

.field public static final SMIL_BODY_TAG:Ljava/lang/String; = "body"

.field public static final SMIL_PAR_ITEM_ATTR_TAG:[Ljava/lang/String; = null

.field public static final SMIL_PAR_ITEM_TAG:[Ljava/lang/String; = null

.field public static final SMIL_PAR_TAG:Ljava/lang/String; = "par"

.field private static final TAG:Ljava/lang/String; = "SmilSimpleParse"

.field public static final TALK_FLAG:I = 0x100000

.field public static final TEXT_FLAG:I = 0x1

.field public static final VCARD_FLAG:I = 0x10000

.field public static final VIDEO_FLAG:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text"

    aput-object v1, v0, v3

    const-string v1, "img"

    aput-object v1, v0, v4

    const-string v1, "video"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "audio"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ref"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ref"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "talk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "file"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->SMIL_PAR_ITEM_TAG:[Ljava/lang/String;

    .line 90
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "src"

    aput-object v1, v0, v3

    const-string v1, "region"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->SMIL_PAR_ITEM_ATTR_TAG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 833
    return-void
.end method

.method private static appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I
    .locals 3
    .parameter "smilBody"
    .parameter "part"
    .parameter "flags"
    .parameter "currentFlag"
    .parameter "xmlTag"

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;-><init>()V

    .line 122
    .local v0, item:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setPduPart(Lcom/google/android/mms/pdu/PduPart;)V

    .line 123
    invoke-virtual {v0, p4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setTag(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->setSrc(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    and-int v2, p2, p3

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->itemLast()Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;)V

    .line 130
    or-int v2, p2, p3

    .line 136
    :goto_0
    return v2

    .line 133
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    .end local v1           #par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-direct {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;-><init>()V

    .line 134
    .restart local v1       #par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;)V

    .line 136
    or-int/lit8 v2, p3, 0x0

    goto :goto_0
.end method

.method public static correctPduSmil(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Z
    .locals 9
    .parameter "pduBody"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 202
    invoke-static {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 203
    .local v2, partSmil:Lcom/google/android/mms/pdu/PduPart;
    const/4 v5, 0x0

    .line 204
    .local v5, smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    .line 207
    :cond_0
    const-string v7, "SmilSimpleParse"

    const-string v8, "correctPduSmil(): make new smil file..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->createByPduBody(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v5

    .line 209
    new-instance v4, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;-><init>(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilHead;Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;)V

    .line 210
    .local v4, smilBean:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;->makeSmilXml()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v2, v7, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->updateParts(Lcom/google/android/mms/pdu/PduPart;[BLandroid/content/Context;)Z

    .line 231
    .end local v4           #smilBean:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$Smil;
    :cond_1
    :goto_0
    return v6

    .line 214
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->parserBySax([B)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v5

    .line 215
    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->isNeedRebuildSmil(Lcom/google/android/mms/pdu/PduBody;Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 217
    const-string v7, "SmilSimpleParse"

    const-string v8, "correctPduSmil(): the old smil is wrong, so we\'ll make new smil file..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v3, smil:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->createByPduBody(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v5

    .line 222
    const-string v7, "<body>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, beginBodyIndex:I
    const-string v7, "</body>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 224
    .local v1, endBodyIndex:I
    if-le v1, v0, :cond_1

    if-lez v0, :cond_1

    .line 225
    add-int/lit8 v7, v1, 0x7

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->makeSmilXml()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v7, v8}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v2, v7, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->updateParts(Lcom/google/android/mms/pdu/PduPart;[BLandroid/content/Context;)Z

    goto :goto_0

    .line 231
    .end local v0           #beginBodyIndex:I
    .end local v1           #endBodyIndex:I
    .end local v3           #smil:Ljava/lang/StringBuffer;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static createByPduBody(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    .locals 10
    .parameter "pb"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    .line 160
    .local v5, partsNum:I
    if-nez v5, :cond_1

    .line 162
    const-string v7, "SmilSimpleParse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createByPduBody(): make new siml, but partsNum is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v6, 0x0

    .line 192
    :cond_0
    return-object v6

    .line 166
    :cond_1
    new-instance v6, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;-><init>()V

    .line 167
    .local v6, smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    const/4 v1, 0x0

    .line 168
    .local v1, flags:I
    new-instance v3, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;-><init>()V

    .line 169
    .local v3, par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-virtual {v6, v3}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->add(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;)V

    .line 170
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 171
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 172
    .local v4, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-static {v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, contentType:Ljava/lang/String;
    const-string v7, "text/plain"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "text/html"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    :cond_2
    const/4 v7, 0x1

    const-string v8, "text"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    .line 170
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    const/16 v7, 0x10

    const-string v8, "img"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 179
    :cond_4
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 180
    const/16 v7, 0x100

    const-string v8, "video"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 181
    :cond_5
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 182
    const/16 v7, 0x1000

    const-string v8, "audio"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 183
    :cond_6
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVcardType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 184
    const/high16 v7, 0x1

    const-string v8, "ref"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 185
    :cond_7
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isTalkType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 186
    const/high16 v7, 0x10

    const-string v8, "talk"

    invoke-static {v6, v4, v1, v7, v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->appendItem(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;Lcom/google/android/mms/pdu/PduPart;IILjava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 189
    :cond_8
    const-string v7, "SmilSimpleParse"

    const-string v8, "createByPduBody(): unsupport media type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 146
    const-string v0, "&"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_1

    .line 458
    invoke-static {p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 459
    const-string v3, "cid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 460
    const-string v3, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, cid:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_0

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 479
    .end local v0           #cid:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 484
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v2

    .line 466
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 467
    if-nez v1, :cond_1

    .line 468
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 469
    if-nez v1, :cond_1

    .line 470
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 471
    if-nez v1, :cond_1

    .line 472
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPartExtend(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    goto :goto_0

    .line 482
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPartSuper(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    move-object v2, v1

    .line 484
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_1
.end method

.method private static findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .parameter "item"
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getPduPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 443
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v0, :cond_0

    .line 444
    invoke-static {p1, p2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 445
    :cond_0
    return-object v0
.end method

.method private static findPartExtend(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 3
    .parameter "pb"
    .parameter "src"

    .prologue
    .line 543
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 544
    .local v1, potIndex:I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 545
    const/4 v0, 0x0

    .line 554
    :cond_0
    :goto_0
    return-object v0

    .line 546
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 548
    .local v0, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v0, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 550
    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    goto :goto_0
.end method

.method private static findPartSuper(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 6
    .parameter "pb"
    .parameter "src"

    .prologue
    const/16 v4, 0x3c

    const/4 v5, 0x0

    .line 488
    const/4 v1, 0x0

    .line 490
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz p1, :cond_3

    .line 491
    invoke-static {p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 492
    const-string v3, "cid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 493
    const-string v3, "cid:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, cid:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 498
    if-nez v1, :cond_3

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 499
    const-string v3, "<"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 501
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 534
    .end local v0           #cid:Ljava/lang/String;
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v2

    .line 503
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v0       #cid:Ljava/lang/String;
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 505
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 506
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_0

    .line 507
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .end local v0           #cid:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v2, v1

    .line 534
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_0

    .line 511
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    .line 512
    const-string v3, "<"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 514
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 515
    if-nez v1, :cond_6

    .line 516
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 517
    if-nez v1, :cond_6

    .line 518
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 521
    :cond_6
    if-nez v1, :cond_3

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 522
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 523
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 524
    if-nez v1, :cond_3

    .line 525
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 526
    if-nez v1, :cond_3

    .line 527
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    goto :goto_1
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .parameter "body"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 100
    .local v2, partNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 102
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 100
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 5
    .parameter "part"

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 413
    const-string v0, ""

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, contentType:Ljava/lang/String;
    const-string v3, "image/jpg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    const-string v0, "image/jpeg"

    goto :goto_0

    .line 420
    :cond_2
    const-string v3, "application/oct-stream"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 422
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 423
    .local v1, name:Ljava/lang/String;
    const-string v3, "vcf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    const-string v0, "text/x-vcard"

    goto :goto_0

    .line 425
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    const-string v3, "image/tiff"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 427
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 428
    .restart local v1       #name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 429
    .local v2, namelen:I
    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".vcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    const-string v0, "text/x-vcard"

    goto :goto_0
.end method

.method public static getUpdatesFromPduBody(Lcom/google/android/mms/pdu/PduBody;)[Ljava/lang/String;
    .locals 18
    .parameter "pduBody"

    .prologue
    .line 284
    const/4 v15, 0x3

    new-array v1, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, ""

    aput-object v16, v1, v15

    const/4 v15, 0x1

    const-string v16, ""

    aput-object v16, v1, v15

    const/4 v15, 0x2

    const-string v16, ""

    aput-object v16, v1, v15

    .line 285
    .local v1, column:[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 286
    .local v9, partSmil:Lcom/google/android/mms/pdu/PduPart;
    const/4 v12, 0x0

    .line 288
    .local v12, smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_2

    .line 290
    :cond_0
    const-string v15, "SmilSimpleParse"

    const-string v16, "getUpdatesFromPduBody(): make new smil file..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->createByPduBody(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v12

    .line 296
    :goto_0
    if-nez v12, :cond_3

    .line 403
    :cond_1
    :goto_1
    return-object v1

    .line 293
    :cond_2
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->parserBySax([B)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;

    move-result-object v12

    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->size()I

    move-result v10

    .line 302
    .local v10, slidesNum:I
    const/4 v15, 0x3

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string v16, ""

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string v16, ""

    aput-object v16, v2, v15

    .line 304
    .local v2, description:[Ljava/lang/String;
    const/4 v15, 0x2

    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 305
    if-eqz v10, :cond_1

    .line 309
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v7

    .line 311
    .local v7, par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->size()I

    move-result v6

    .line 313
    .local v6, mediaNum:I
    const/4 v11, 0x0

    .line 314
    .local v11, sme:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    const/4 v8, 0x0

    .line 315
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v14, ""

    .line 316
    .local v14, tag:Ljava/lang/String;
    const-string v13, ""

    .line 317
    .local v13, src:Ljava/lang/String;
    const v3, 0x7fffffff

    .line 319
    .local v3, find:I
    const/4 v4, 0x0

    .line 321
    .local v4, hasText:Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 322
    invoke-virtual {v7, v5}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v11

    .line 323
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 324
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getSrc()Ljava/lang/String;

    move-result-object v13

    .line 326
    const-string v15, "text"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 328
    if-nez v4, :cond_4

    .line 329
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 330
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "text#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 331
    const/4 v15, 0x0

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 399
    :cond_4
    :goto_3
    if-eqz v4, :cond_7

    const/4 v15, 0x1

    if-ne v3, v15, :cond_7

    .line 402
    :cond_5
    const/4 v15, 0x2

    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    goto/16 :goto_1

    .line 333
    :cond_6
    const/4 v15, 0x1

    if-le v3, v15, :cond_4

    .line 335
    const-string v15, "img"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 336
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 337
    if-nez v8, :cond_8

    .line 321
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 338
    :cond_8
    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "img#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 339
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 340
    const/4 v3, 0x1

    goto :goto_3

    .line 341
    :cond_9
    const-string v15, "video"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 342
    const/4 v15, 0x2

    if-le v3, v15, :cond_4

    .line 343
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 344
    if-eqz v8, :cond_7

    .line 345
    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "video#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 346
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 347
    const/4 v3, 0x2

    goto/16 :goto_3

    .line 349
    :cond_a
    const-string v15, "audio"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 350
    const/4 v15, 0x3

    if-le v3, v15, :cond_4

    .line 351
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 352
    if-eqz v8, :cond_7

    .line 353
    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "audio#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 354
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 355
    const/4 v3, 0x3

    goto/16 :goto_3

    .line 357
    :cond_b
    const-string v15, "ref"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 358
    const/4 v15, 0x4

    if-le v3, v15, :cond_4

    .line 359
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 360
    if-eqz v8, :cond_7

    .line 361
    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ref#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 362
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 363
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 365
    :cond_c
    const-string v15, "ref"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 366
    const/4 v15, 0x5

    if-le v3, v15, :cond_4

    .line 367
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 368
    if-eqz v8, :cond_7

    .line 369
    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ref#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 370
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 371
    const/4 v3, 0x5

    goto/16 :goto_3

    .line 373
    :cond_d
    const-string v15, "talk"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 374
    const/4 v15, 0x6

    if-le v3, v15, :cond_4

    .line 375
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 376
    if-eqz v8, :cond_7

    .line 377
    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "talk#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 378
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 379
    const/4 v3, 0x6

    goto/16 :goto_3

    .line 381
    :cond_e
    const-string v15, "file"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 382
    const/4 v15, 0x7

    if-le v3, v15, :cond_4

    .line 383
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 384
    if-eqz v8, :cond_7

    .line 385
    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "file#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 386
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 387
    const/4 v3, 0x7

    goto/16 :goto_3

    .line 390
    :cond_f
    const/16 v15, 0x8

    if-le v3, v15, :cond_4

    .line 391
    move-object/from16 v0, p0

    invoke-static {v11, v0, v13}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 392
    if-eqz v8, :cond_7

    .line 393
    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "#"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v8}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->getContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v2, v15

    .line 394
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v1, v15

    .line 395
    const/16 v3, 0x8

    goto/16 :goto_3
.end method

.method private static isNeedRebuildSmil(Lcom/google/android/mms/pdu/PduBody;Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;)Z
    .locals 7
    .parameter "pduBody"
    .parameter "smilBody"

    .prologue
    const/4 v5, 0x1

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 261
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;

    move-result-object v3

    .line 262
    .local v3, par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    .end local v3           #par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    :cond_0
    :goto_1
    return v5

    .line 264
    .restart local v3       #par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 265
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;->item(I)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;

    move-result-object v1

    .line 266
    .local v1, item:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, src:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 260
    .end local v1           #item:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilParItem;
    .end local v4           #src:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v2           #j:I
    .end local v3           #par:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilPar;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static parserBySax([B)Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    .locals 12
    .parameter "smilByte"

    .prologue
    const/4 v8, 0x0

    .line 571
    if-eqz p0, :cond_0

    array-length v9, p0

    if-nez v9, :cond_2

    :cond_0
    move-object v5, v8

    .line 601
    :cond_1
    :goto_0
    return-object v5

    .line 574
    :cond_2
    const/4 v1, 0x0

    .line 575
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v4, 0x0

    .line 576
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    const/4 v2, 0x0

    .line 577
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 579
    .local v5, smilBody:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 580
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 581
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 582
    .local v7, xmlReader:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;-><init>()V

    .line 583
    .local v6, smilSaxHandler:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
    invoke-interface {v7, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 585
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 587
    .end local v2           #inputStream:Ljava/io/InputStream;
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 589
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;->getSmilBody()Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilBody;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 595
    if-eqz v3, :cond_1

    .line 596
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 590
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #smilSaxHandler:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
    .end local v7           #xmlReader:Lorg/xml/sax/XMLReader;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v9, "SmilSimpleParse"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parserBySax()-----\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    if-eqz v2, :cond_3

    .line 596
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    move-object v5, v8

    .line 592
    goto :goto_0

    .line 594
    :catchall_0
    move-exception v8

    .line 595
    :goto_3
    if-eqz v2, :cond_4

    .line 596
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 594
    :cond_4
    :goto_4
    throw v8

    .line 597
    :catch_2
    move-exception v0

    .line 598
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 597
    .local v0, e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 598
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 594
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v6       #smilSaxHandler:Lcom/google/android/mms/pdu/smil/SmilSimpleParse$SmilSaxHandler;
    .restart local v7       #xmlReader:Lorg/xml/sax/XMLReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .line 590
    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 558
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static updateParts(Lcom/google/android/mms/pdu/PduPart;[BLandroid/content/Context;)Z
    .locals 8
    .parameter "partSmil"
    .parameter "smilByte"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 242
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v3, values:Landroid/content/ContentValues;
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v7, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 244
    .local v7, ev:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p1, :cond_0

    .line 245
    const-string v0, "text"

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 248
    .local v6, count:I
    if-lez v6, :cond_1

    .line 249
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 250
    :cond_1
    if-lez v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
