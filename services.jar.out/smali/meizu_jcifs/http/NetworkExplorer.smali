.class public Lmeizu_jcifs/http/NetworkExplorer;
.super Ljavax/servlet/http/HttpServlet;
.source "NetworkExplorer.java"


# static fields
.field private static log:Lmeizu_jcifs/util/LogStream;


# instance fields
.field private credentialsSupplied:Z

.field private defaultDomain:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private mimeMap:Lmeizu_jcifs/util/MimeMap;

.field private ntlmSsp:Lmeizu_jcifs/http/NtlmSsp;

.field private realm:Ljava/lang/String;

.field private style:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lmeizu_jcifs/util/LogStream;->getInstance()Lmeizu_jcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "pathInfo"

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x2f

    .line 382
    const/16 v8, 0x100

    new-array v4, v8, [C

    .line 386
    .local v4, out:[C
    if-nez p1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-object v7

    .line 389
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 391
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v1

    .line 392
    .local v5, p:I
    :goto_1
    if-ge v5, v3, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    .line 393
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 395
    :cond_2
    if-eq v5, v3, :cond_0

    move v2, v1

    .line 400
    .end local v1           #i:I
    .local v2, i:I
    :goto_2
    if-ge v5, v3, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    if-eq v0, v9, :cond_3

    .line 401
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v4, v2

    .line 402
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 404
    .end local v0           #ch:C
    :cond_3
    :goto_3
    if-ge v5, v3, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_4

    .line 405
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 407
    :cond_4
    if-ge v5, v3, :cond_7

    .line 408
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v9, v4, v2

    .line 410
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #p:I
    .local v6, p:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #ch:C
    aput-char v0, v4, v1

    .line 411
    if-ge v6, v3, :cond_5

    if-ne v0, v9, :cond_6

    :cond_5
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    move v5, v6

    .line 413
    .end local v0           #ch:C
    .end local v6           #p:I
    .restart local v5       #p:I
    :goto_5
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .end local v1           #i:I
    .end local v5           #p:I
    .restart local v0       #ch:C
    .restart local v2       #i:I
    .restart local v6       #p:I
    :cond_6
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    move v5, v6

    .end local v6           #p:I
    .restart local v5       #p:I
    goto :goto_4

    .end local v0           #ch:C
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_7
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_5
.end method


# virtual methods
.method protected compareDates(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;Lmeizu_jcifs/smb/SmbFile;)I
    .locals 6
    .parameter "f1"
    .parameter "f1name"
    .parameter "f2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 176
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v2

    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 177
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->lastModified()J

    move-result-wide v2

    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected compareNames(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;Lmeizu_jcifs/smb/SmbFile;)I
    .locals 2
    .parameter "f1"
    .parameter "f1name"
    .parameter "f2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 134
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 136
    :goto_0
    return v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected compareSizes(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;Lmeizu_jcifs/smb/SmbFile;)I
    .locals 10
    .parameter "f1"
    .parameter "f1name"
    .parameter "f2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 141
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v4

    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v5

    if-eq v4, v5, :cond_2

    .line 142
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->length()J

    move-result-wide v4

    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->length()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 148
    .local v0, diff:J
    cmp-long v4, v0, v8

    if-nez v4, :cond_4

    .line 149
    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 151
    :cond_4
    cmp-long v4, v0, v8

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method protected compareTypes(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;Lmeizu_jcifs/smb/SmbFile;)I
    .locals 8
    .parameter "f1"
    .parameter "f1name"
    .parameter "f2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2e

    const/4 v4, -0x1

    .line 157
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v5

    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 158
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    :goto_0
    return v4

    .line 158
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, f2name:Ljava/lang/String;
    invoke-virtual {p1}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 165
    .local v1, i:I
    if-ne v1, v4, :cond_3

    const-string v2, ""

    .line 166
    .local v2, t1:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 167
    if-ne v1, v4, :cond_4

    const-string v3, ""

    .line 169
    .local v3, t2:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    .line 170
    if-nez v1, :cond_5

    .line 171
    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 165
    .end local v2           #t1:Ljava/lang/String;
    .end local v3           #t2:Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 167
    .restart local v2       #t1:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .restart local v3       #t2:Ljava/lang/String;
    :cond_5
    move v4, v1

    .line 173
    goto :goto_0
.end method

.method protected doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lmeizu_jcifs/smb/SmbFile;)V
    .locals 28
    .parameter "req"
    .parameter "resp"
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v23, "MM/d/yy h:mm a"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .local v18, sdf:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 195
    .local v3, cal:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Lmeizu_jcifs/smb/SmbFile;->listFiles()[Lmeizu_jcifs/smb/SmbFile;

    move-result-object v5

    .line 198
    .local v5, dirents:[Lmeizu_jcifs/smb/SmbFile;
    sget-object v23, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    sget v23, Lmeizu_jcifs/util/LogStream;->level:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 199
    sget-object v23, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v5

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " items listed"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 200
    :cond_0
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 201
    .local v21, sorted:Ljava/util/LinkedList;
    const-string v23, "fmt"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, fmt:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 202
    const-string v8, "col"

    .line 204
    :cond_1
    const/16 v20, 0x0

    .line 205
    .local v20, sort:I
    const-string v23, "sort"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, str:Ljava/lang/String;
    if-eqz v22, :cond_2

    const-string v23, "name"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 206
    :cond_2
    const/16 v20, 0x0

    .line 214
    :cond_3
    :goto_0
    const/4 v7, 0x0

    .local v7, fileCount:I
    move v4, v7

    .line 215
    .local v4, dirCount:I
    const/16 v13, 0x1c

    .line 216
    .local v13, maxLen:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_11

    .line 218
    :try_start_0
    aget-object v23, v5, v9

    invoke-virtual/range {v23 .. v23}, Lmeizu_jcifs/smb/SmbFile;->getType()I
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 216
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 207
    .end local v4           #dirCount:I
    .end local v7           #fileCount:I
    .end local v9           #i:I
    .end local v13           #maxLen:I
    :cond_4
    const-string v23, "size"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 208
    const/16 v20, 0x1

    goto :goto_0

    .line 209
    :cond_5
    const-string v23, "type"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 210
    const/16 v20, 0x2

    goto :goto_0

    .line 211
    :cond_6
    const-string v23, "date"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 212
    const/16 v20, 0x3

    goto :goto_0

    .line 221
    .restart local v4       #dirCount:I
    .restart local v7       #fileCount:I
    .restart local v9       #i:I
    .restart local v13       #maxLen:I
    :catch_0
    move-exception v17

    .line 222
    .local v17, sae:Lmeizu_jcifs/smb/SmbAuthException;
    sget-object v23, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    sget v23, Lmeizu_jcifs/util/LogStream;->level:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 223
    sget-object v23, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmeizu_jcifs/smb/SmbAuthException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 231
    .end local v17           #sae:Lmeizu_jcifs/smb/SmbAuthException;
    :cond_7
    aget-object v23, v5, v9

    invoke-virtual/range {v23 .. v23}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 232
    add-int/lit8 v4, v4, 0x1

    .line 237
    :goto_3
    aget-object v23, v5, v9

    invoke-virtual/range {v23 .. v23}, Lmeizu_jcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, name:Ljava/lang/String;
    sget-object v23, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    sget v23, Lmeizu_jcifs/util/LogStream;->level:I

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 239
    sget-object v23, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmeizu_jcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 240
    :cond_8
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 241
    .local v12, len:I
    if-le v12, v13, :cond_9

    .line 242
    move v13, v12

    .line 245
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .line 246
    .local v10, iter:Ljava/util/ListIterator;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_4
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 247
    if-nez v20, :cond_d

    .line 248
    aget-object v24, v5, v9

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmeizu_jcifs/smb/SmbFile;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v14, v2}, Lmeizu_jcifs/http/NetworkExplorer;->compareNames(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;Lmeizu_jcifs/smb/SmbFile;)I

    move-result v23

    if-gez v23, :cond_e

    .line 265
    :cond_a
    :goto_5
    aget-object v23, v5, v9

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 224
    .end local v10           #iter:Ljava/util/ListIterator;
    .end local v11           #j:I
    .end local v12           #len:I
    .end local v14           #name:Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 225
    .local v19, se:Lmeizu_jcifs/smb/SmbException;
    sget-object v23, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    sget v23, Lmeizu_jcifs/util/LogStream;->level:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 226
    sget-object v23, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmeizu_jcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 227
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lmeizu_jcifs/smb/SmbException;->getNtStatus()I

    move-result v23

    const v24, -0x3fffffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 228
    throw v19

    .line 234
    .end local v19           #se:Lmeizu_jcifs/smb/SmbException;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 251
    .restart local v10       #iter:Ljava/util/ListIterator;
    .restart local v11       #j:I
    .restart local v12       #len:I
    .restart local v14       #name:Ljava/lang/String;
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 252
    aget-object v24, v5, v9

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmeizu_jcifs/smb/SmbFile;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v14, v2}, Lmeizu_jcifs/http/NetworkExplorer;->compareSizes(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;Lmeizu_jcifs/smb/SmbFile;)I

    move-result v23

    if-ltz v23, :cond_a

    .line 246
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 255
    :cond_f
    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 256
    aget-object v24, v5, v9

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmeizu_jcifs/smb/SmbFile;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v14, v2}, Lmeizu_jcifs/http/NetworkExplorer;->compareTypes(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;Lmeizu_jcifs/smb/SmbFile;)I

    move-result v23

    if-gez v23, :cond_e

    goto :goto_5

    .line 259
    :cond_10
    const/16 v23, 0x3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 260
    aget-object v24, v5, v9

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmeizu_jcifs/smb/SmbFile;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v14, v2}, Lmeizu_jcifs/http/NetworkExplorer;->compareDates(Lmeizu_jcifs/smb/SmbFile;Ljava/lang/String;Lmeizu_jcifs/smb/SmbFile;)I

    move-result v23

    if-gez v23, :cond_e

    goto/16 :goto_5

    .line 267
    .end local v10           #iter:Ljava/util/ListIterator;
    .end local v11           #j:I
    .end local v12           #len:I
    .end local v14           #name:Ljava/lang/String;
    :cond_11
    const/16 v23, 0x32

    move/from16 v0, v23

    if-le v13, v0, :cond_12

    .line 268
    const/16 v13, 0x32

    .line 270
    :cond_12
    mul-int/lit8 v13, v13, 0x9

    .line 272
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v15

    .line 274
    .local v15, out:Ljava/io/PrintWriter;
    const-string v23, "text/html"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 276
    const-string v23, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    const-string v23, "<html><head><title>Network Explorer</title>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    const-string v23, "<meta HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string v23, "<style TYPE=\"text/css\">"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu_jcifs/http/NetworkExplorer;->style:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    array-length v0, v5

    move/from16 v23, v0

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 284
    const-string v23, "    a:hover {"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    const-string v23, "        background: #a2ff01;"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const-string v23, "    }"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    :cond_13
    const-string v23, "</STYLE>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    const-string v23, "</head><body>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<a class=\"sort\" style=\"width: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";\" href=\"?fmt=detail&sort=name\">Name</a>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    const-string v23, "<a class=\"sort\" href=\"?fmt=detail&sort=size\">Size</a>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    const-string v23, "<a class=\"sort\" href=\"?fmt=detail&sort=type\">Type</a>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    const-string v23, "<a class=\"sort\" style=\"width: 180\" href=\"?fmt=detail&sort=date\">Modified</a><br clear=\'all\'><p>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Lmeizu_jcifs/smb/SmbFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    .line 299
    .local v16, path:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    .line 300
    const-string v23, "<b><big>smb://</big></b><br>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    const-string v16, "."

    .line 306
    :goto_6
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    add-int v24, v4, v7

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " objects ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " directories, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " files)<br>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    const-string v23, "<b><a class=\"plain\" href=\".\">normal</a> | <a class=\"plain\" href=\"?fmt=detail\">detailed</a></b>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    const-string v23, "<p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\'><tr><td>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<A style=\"width: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    const-string v23, "; height: 18;\" HREF=\""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string v23, "\"><b>&uarr;</b></a>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    const-string v23, "detail"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 315
    const-string v23, "<br clear=\'all\'>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_15

    invoke-virtual/range {p3 .. p3}, Lmeizu_jcifs/smb/SmbFile;->getType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16

    .line 319
    :cond_15
    const-string v16, ""

    .line 322
    :cond_16
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .line 323
    .restart local v10       #iter:Ljava/util/ListIterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 324
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmeizu_jcifs/smb/SmbFile;

    .line 325
    .local v6, f:Lmeizu_jcifs/smb/SmbFile;
    invoke-virtual {v6}, Lmeizu_jcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v14

    .line 327
    .restart local v14       #name:Ljava/lang/String;
    const-string v23, "detail"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 328
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<A style=\"width: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    const-string v23, "; height: 18;\" HREF=\""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v6}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_18

    .line 334
    const-string v23, "?fmt=detail\"><b>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    const-string v23, "</b></a>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    :goto_8
    const-string v23, "<br clear=\'all\'>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 303
    .end local v6           #f:Lmeizu_jcifs/smb/SmbFile;
    .end local v10           #iter:Ljava/util/ListIterator;
    .end local v14           #name:Ljava/lang/String;
    :cond_17
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<b><big>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "</big></b><br>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    const-string v16, "../"

    goto/16 :goto_6

    .line 338
    .restart local v6       #f:Lmeizu_jcifs/smb/SmbFile;
    .restart local v10       #iter:Ljava/util/ListIterator;
    .restart local v14       #name:Ljava/lang/String;
    :cond_18
    const-string v23, "\"><b>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    const-string v23, "</b></a><div align=\'right\'>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lmeizu_jcifs/smb/SmbFile;->length()J

    move-result-wide v24

    const-wide/16 v26, 0x400

    div-long v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " KB </div><div>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    const/16 v23, 0x2e

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v23

    add-int/lit8 v9, v23, 0x1

    .line 343
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v9, v0, :cond_19

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v23, v23, v9

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_19

    .line 344
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "</div class=\'ext\'>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    :goto_9
    const-string v23, "<div style=\'width: 180\'>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    new-instance v23, Ljava/util/Date;

    invoke-virtual {v6}, Lmeizu_jcifs/smb/SmbFile;->lastModified()J

    move-result-wide v24

    invoke-direct/range {v23 .. v25}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    const-string v23, "</div>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 346
    :cond_19
    const-string v23, "&nbsp;</div>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    .line 354
    :cond_1a
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "<A style=\"width: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v6}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 356
    const-string v23, "; height: 18;\" HREF=\""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    const-string v23, "\"><b>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    const-string v23, "</b></a>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 363
    :cond_1b
    const-string v23, ";\" HREF=\""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    const-string v23, "\"><b>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v15, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    const-string v23, "</b><br><small>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lmeizu_jcifs/smb/SmbFile;->length()J

    move-result-wide v24

    const-wide/16 v26, 0x400

    div-long v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "KB <br>"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    new-instance v23, Ljava/util/Date;

    invoke-virtual {v6}, Lmeizu_jcifs/smb/SmbFile;->lastModified()J

    move-result-wide v24

    invoke-direct/range {v23 .. v25}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    const-string v23, "</small>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string v23, "</a>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 377
    .end local v6           #f:Lmeizu_jcifs/smb/SmbFile;
    .end local v14           #name:Ljava/lang/String;
    :cond_1c
    const-string v23, "</td></tr></table>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const-string v23, "</BODY></HTML>"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V

    .line 380
    return-void
.end method

.method protected doFile(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lmeizu_jcifs/smb/SmbFile;)V
    .locals 10
    .parameter "req"
    .parameter "resp"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 114
    .local v0, buf:[B
    new-instance v1, Lmeizu_jcifs/smb/SmbFileInputStream;

    invoke-direct {v1, p3}, Lmeizu_jcifs/smb/SmbFileInputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;)V

    .line 115
    .local v1, in:Lmeizu_jcifs/smb/SmbFileInputStream;
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    .line 116
    .local v3, out:Ljavax/servlet/ServletOutputStream;
    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, url:Ljava/lang/String;
    const-string v6, "text/plain"

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 120
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, n:I
    if-lez v2, :cond_0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_0

    .line 123
    iget-object v6, p0, Lmeizu_jcifs/http/NetworkExplorer;->mimeMap:Lmeizu_jcifs/util/MimeMap;

    invoke-virtual {v6, v4}, Lmeizu_jcifs/util/MimeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 125
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    const-string v6, "Content-Length"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lmeizu_jcifs/smb/SmbFile;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v6, "Accept-Ranges"

    const-string v7, "Bytes"

    invoke-interface {p2, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    invoke-virtual {v1, v0}, Lmeizu_jcifs/smb/SmbFileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 129
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljavax/servlet/ServletOutputStream;->write([BII)V

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 28
    .parameter "req"
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 418
    const/16 v22, 0x0

    .line 419
    .local v22, server:Ljava/lang/String;
    const/16 v17, 0x1

    .line 420
    .local v17, possibleWorkgroup:Z
    const/4 v13, 0x0

    .line 421
    .local v13, ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v23

    .line 423
    .local v23, ssn:Ljavax/servlet/http/HttpSession;
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v16

    .local v16, pathInfo:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 425
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lmeizu_jcifs/http/NetworkExplorer;->parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 426
    if-eqz v22, :cond_0

    const/16 v25, 0x2f

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .local v9, i:I
    if-lez v9, :cond_0

    .line 427
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    .line 428
    const/16 v17, 0x0

    .line 432
    .end local v9           #i:I
    :cond_0
    const-string v25, "Authorization"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 433
    .local v12, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmeizu_jcifs/http/NetworkExplorer;->enableBasic:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmeizu_jcifs/http/NetworkExplorer;->insecureBasic:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v25

    if-eqz v25, :cond_4

    :cond_1
    const/4 v14, 0x1

    .line 435
    .local v14, offerBasic:Z
    :goto_0
    if-eqz v12, :cond_f

    const-string v25, "NTLM "

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    if-eqz v14, :cond_f

    const-string v25, "Basic "

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 438
    :cond_2
    const-string v25, "NTLM "

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 441
    if-eqz v16, :cond_3

    if-nez v22, :cond_5

    .line 442
    :cond_3
    const-string v25, "\u0001\u0002__MSBROWSE__\u0002"

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lmeizu_jcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Lmeizu_jcifs/netbios/NbtAddress;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmeizu_jcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    .line 443
    .local v11, mb:Ljava/lang/String;
    invoke-static {v11}, Lmeizu_jcifs/UniAddress;->getByName(Ljava/lang/String;)Lmeizu_jcifs/UniAddress;

    move-result-object v5

    .line 448
    .end local v11           #mb:Ljava/lang/String;
    .local v5, dc:Lmeizu_jcifs/UniAddress;
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    .line 449
    invoke-static {v5}, Lmeizu_jcifs/smb/SmbSession;->getChallenge(Lmeizu_jcifs/UniAddress;)[B

    move-result-object v4

    .line 450
    .local v4, challenge:[B
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lmeizu_jcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    move-result-object v13

    if-nez v13, :cond_9

    .line 534
    .end local v4           #challenge:[B
    .end local v5           #dc:Lmeizu_jcifs/UniAddress;
    :goto_2
    return-void

    .line 433
    .end local v14           #offerBasic:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 445
    .restart local v14       #offerBasic:Z
    :cond_5
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-static {v0, v1}, Lmeizu_jcifs/UniAddress;->getByName(Ljava/lang/String;Z)Lmeizu_jcifs/UniAddress;

    move-result-object v5

    .restart local v5       #dc:Lmeizu_jcifs/UniAddress;
    goto :goto_1

    .line 454
    .end local v5           #dc:Lmeizu_jcifs/UniAddress;
    :cond_6
    new-instance v3, Ljava/lang/String;

    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lmeizu_jcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v25

    const-string v26, "US-ASCII"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 455
    .local v3, auth:Ljava/lang/String;
    const/16 v25, 0x3a

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 456
    .local v10, index:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v10, v0, :cond_c

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v3, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 457
    .local v24, user:Ljava/lang/String;
    :goto_3
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v10, v0, :cond_d

    add-int/lit8 v25, v10, 0x1

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 458
    .local v15, password:Ljava/lang/String;
    :goto_4
    const/16 v25, 0x5c

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 459
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v10, v0, :cond_7

    const/16 v25, 0x2f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 460
    :cond_7
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v10, v0, :cond_e

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 461
    .local v6, domain:Ljava/lang/String;
    :goto_5
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v10, v0, :cond_8

    add-int/lit8 v25, v10, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 462
    :cond_8
    new-instance v13, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .end local v13           #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    move-object/from16 v0, v24

    invoke-direct {v13, v6, v0, v15}, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .end local v3           #auth:Ljava/lang/String;
    .end local v6           #domain:Ljava/lang/String;
    .end local v10           #index:I
    .end local v15           #password:Ljava/lang/String;
    .end local v24           #user:Ljava/lang/String;
    .restart local v13       #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    :cond_9
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "npa-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v13}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    :cond_a
    if-eqz v13, :cond_12

    .line 487
    :try_start_0
    new-instance v8, Lmeizu_jcifs/smb/SmbFile;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "smb:/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v8, v0, v13}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V

    .line 494
    .local v8, file:Lmeizu_jcifs/smb/SmbFile;
    :goto_6
    invoke-virtual {v8}, Lmeizu_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_14

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lmeizu_jcifs/http/NetworkExplorer;->doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lmeizu_jcifs/smb/SmbFile;)V
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmeizu_jcifs/smb/DfsReferral; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 499
    .end local v8           #file:Lmeizu_jcifs/smb/SmbFile;
    :catch_0
    move-exception v21

    .line 500
    .local v21, sae:Lmeizu_jcifs/smb/SmbAuthException;
    if-eqz v23, :cond_b

    .line 501
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "npa-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 503
    :cond_b
    invoke-virtual/range {v21 .. v21}, Lmeizu_jcifs/smb/SmbAuthException;->getNtStatus()I

    move-result v25

    const v26, -0x3ffffffb

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 507
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v21           #sae:Lmeizu_jcifs/smb/SmbAuthException;
    .restart local v3       #auth:Ljava/lang/String;
    .restart local v10       #index:I
    :cond_c
    move-object/from16 v24, v3

    .line 456
    goto/16 :goto_3

    .line 457
    .restart local v24       #user:Ljava/lang/String;
    :cond_d
    const-string v15, ""

    goto/16 :goto_4

    .line 460
    .restart local v15       #password:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lmeizu_jcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    goto/16 :goto_5

    .line 467
    .end local v3           #auth:Ljava/lang/String;
    .end local v10           #index:I
    .end local v15           #password:Ljava/lang/String;
    .end local v24           #user:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmeizu_jcifs/http/NetworkExplorer;->credentialsSupplied:Z

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 468
    if-eqz v23, :cond_10

    .line 469
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "npa-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    check-cast v13, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 471
    .restart local v13       #ntlm:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    :cond_10
    if-nez v13, :cond_a

    .line 472
    const-string v25, "WWW-Authenticate"

    const-string v26, "NTLM"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    if-eqz v14, :cond_11

    .line 474
    const-string v25, "WWW-Authenticate"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Basic realm=\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu_jcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_11
    const-string v25, "Connection"

    const-string v26, "close"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/16 v25, 0x191

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 478
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    goto/16 :goto_2

    .line 488
    :cond_12
    if-nez v22, :cond_13

    .line 489
    :try_start_1
    new-instance v8, Lmeizu_jcifs/smb/SmbFile;

    const-string v25, "smb://"

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .restart local v8       #file:Lmeizu_jcifs/smb/SmbFile;
    goto/16 :goto_6

    .line 491
    .end local v8           #file:Lmeizu_jcifs/smb/SmbFile;
    :cond_13
    new-instance v8, Lmeizu_jcifs/smb/SmbFile;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "smb:/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .restart local v8       #file:Lmeizu_jcifs/smb/SmbFile;
    goto/16 :goto_6

    .line 497
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lmeizu_jcifs/http/NetworkExplorer;->doFile(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lmeizu_jcifs/smb/SmbFile;)V
    :try_end_1
    .catch Lmeizu_jcifs/smb/SmbAuthException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmeizu_jcifs/smb/DfsReferral; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 518
    .end local v8           #file:Lmeizu_jcifs/smb/SmbFile;
    :catch_1
    move-exception v7

    .line 519
    .local v7, dr:Lmeizu_jcifs/smb/DfsReferral;
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v19

    .line 520
    .local v19, redir:Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v18

    .line 521
    .local v18, qs:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v26

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 522
    .end local v19           #redir:Ljava/lang/StringBuffer;
    .local v20, redir:Ljava/lang/StringBuffer;
    const/16 v25, 0x2f

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 523
    iget-object v0, v7, Lmeizu_jcifs/smb/DfsReferral;->server:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    const/16 v25, 0x2f

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 525
    iget-object v0, v7, Lmeizu_jcifs/smb/DfsReferral;->share:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    const/16 v25, 0x2f

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 527
    if-eqz v18, :cond_15

    .line 528
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    :cond_15
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 531
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    goto/16 :goto_2

    .line 510
    .end local v7           #dr:Lmeizu_jcifs/smb/DfsReferral;
    .end local v18           #qs:Ljava/lang/String;
    .end local v20           #redir:Ljava/lang/StringBuffer;
    .restart local v21       #sae:Lmeizu_jcifs/smb/SmbAuthException;
    :cond_16
    const-string v25, "WWW-Authenticate"

    const-string v26, "NTLM"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    if-eqz v14, :cond_17

    .line 512
    const-string v25, "WWW-Authenticate"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Basic realm=\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu_jcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_17
    const-string v25, "Connection"

    const-string v26, "close"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/16 v25, 0x191

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 516
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    goto/16 :goto_2
.end method

.method public init()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 56
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v7, sb:Ljava/lang/StringBuffer;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 61
    .local v0, buf:[B
    const-string v8, "meizu_jcifs.smb.client.soTimeout"

    const-string v9, "600000"

    invoke-static {v8, v9}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const-string v8, "meizu_jcifs.smb.client.attrExpirationPeriod"

    const-string v9, "300000"

    invoke-static {v8, v9}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lmeizu_jcifs/http/NetworkExplorer;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 65
    .local v1, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 66
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 67
    .local v6, name:Ljava/lang/String;
    const-string v8, "meizu_jcifs."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 68
    invoke-virtual {p0, v6}, Lmeizu_jcifs/http/NetworkExplorer;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmeizu_jcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    .end local v6           #name:Ljava/lang/String;
    :cond_1
    const-string v8, "meizu_jcifs.smb.client.username"

    invoke-static {v8}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 73
    new-instance v8, Lmeizu_jcifs/http/NtlmSsp;

    invoke-direct {v8}, Lmeizu_jcifs/http/NtlmSsp;-><init>()V

    iput-object v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->ntlmSsp:Lmeizu_jcifs/http/NtlmSsp;

    .line 79
    :goto_1
    :try_start_0
    new-instance v8, Lmeizu_jcifs/util/MimeMap;

    invoke-direct {v8}, Lmeizu_jcifs/util/MimeMap;-><init>()V

    iput-object v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->mimeMap:Lmeizu_jcifs/util/MimeMap;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string v9, "meizu_jcifs/http/ne.css"

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 81
    .local v3, is:Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, n:I
    if-eq v5, v11, :cond_3

    .line 82
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ISO8859_1"

    invoke-direct {v8, v0, v9, v5, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 85
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #n:I
    :catch_0
    move-exception v2

    .line 86
    .local v2, ioe:Ljava/io/IOException;
    new-instance v8, Ljavax/servlet/ServletException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 75
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->credentialsSupplied:Z

    goto :goto_1

    .line 84
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #n:I
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->style:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    const-string v8, "meizu_jcifs.http.enableBasic"

    invoke-static {v8, v12}, Lmeizu_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->enableBasic:Z

    .line 90
    const-string v8, "meizu_jcifs.http.insecureBasic"

    invoke-static {v8, v12}, Lmeizu_jcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->insecureBasic:Z

    .line 91
    const-string v8, "meizu_jcifs.http.basicRealm"

    invoke-static {v8}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    .line 92
    iget-object v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    if-nez v8, :cond_4

    const-string v8, "jCIFS"

    iput-object v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    .line 93
    :cond_4
    const-string v8, "meizu_jcifs.smb.client.domain"

    invoke-static {v8}, Lmeizu_jcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmeizu_jcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    .line 95
    const-string v8, "meizu_jcifs.util.loglevel"

    invoke-static {v8, v11}, Lmeizu_jcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, level:I
    if-eq v4, v11, :cond_5

    .line 96
    invoke-static {v4}, Lmeizu_jcifs/util/LogStream;->setLevel(I)V

    .line 98
    :cond_5
    sget-object v8, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    sget v8, Lmeizu_jcifs/util/LogStream;->level:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_6

    .line 100
    :try_start_2
    sget-object v8, Lmeizu_jcifs/http/NetworkExplorer;->log:Lmeizu_jcifs/util/LogStream;

    const-string v9, "JCIFS PROPERTIES"

    invoke-static {v8, v9}, Lmeizu_jcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    :cond_6
    :goto_3
    return-void

    .line 101
    :catch_1
    move-exception v8

    goto :goto_3
.end method
