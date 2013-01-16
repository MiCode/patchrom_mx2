.class public Lmeizu_jcifs/smb/ACE;
.super Ljava/lang/Object;
.source "ACE.java"


# static fields
.field public static final DELETE:I = 0x10000

.field public static final FILE_APPEND_DATA:I = 0x4

.field public static final FILE_DELETE:I = 0x40

.field public static final FILE_EXECUTE:I = 0x20

.field public static final FILE_READ_ATTRIBUTES:I = 0x80

.field public static final FILE_READ_DATA:I = 0x1

.field public static final FILE_READ_EA:I = 0x8

.field public static final FILE_WRITE_ATTRIBUTES:I = 0x100

.field public static final FILE_WRITE_DATA:I = 0x2

.field public static final FILE_WRITE_EA:I = 0x10

.field public static final FLAGS_CONTAINER_INHERIT:I = 0x2

.field public static final FLAGS_INHERITED:I = 0x10

.field public static final FLAGS_INHERIT_ONLY:I = 0x8

.field public static final FLAGS_NO_PROPAGATE:I = 0x4

.field public static final FLAGS_OBJECT_INHERIT:I = 0x1

.field public static final GENERIC_ALL:I = 0x10000000

.field public static final GENERIC_EXECUTE:I = 0x20000000

.field public static final GENERIC_READ:I = -0x80000000

.field public static final GENERIC_WRITE:I = 0x40000000

.field public static final READ_CONTROL:I = 0x20000

.field public static final SYNCHRONIZE:I = 0x100000

.field public static final WRITE_DAC:I = 0x40000

.field public static final WRITE_OWNER:I = 0x80000


# instance fields
.field access:I

.field allow:Z

.field flags:I

.field sid:Lmeizu_jcifs/smb/SID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 3
    .parameter "sb"
    .parameter "str"
    .parameter "width"

    .prologue
    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, p3, v2

    .line 159
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method decode([BI)I
    .locals 3
    .parameter "buf"
    .parameter "bi"

    .prologue
    .line 146
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, bi:I
    aget-byte v2, p1, p2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lmeizu_jcifs/smb/ACE;->allow:Z

    .line 147
    add-int/lit8 p2, v0, 0x1

    .end local v0           #bi:I
    .restart local p2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lmeizu_jcifs/smb/ACE;->flags:I

    .line 148
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    .line 149
    .local v1, size:I
    add-int/lit8 p2, p2, 0x2

    .line 150
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    iput v2, p0, Lmeizu_jcifs/smb/ACE;->access:I

    .line 151
    add-int/lit8 p2, p2, 0x4

    .line 152
    new-instance v2, Lmeizu_jcifs/smb/SID;

    invoke-direct {v2, p1, p2}, Lmeizu_jcifs/smb/SID;-><init>([BI)V

    iput-object v2, p0, Lmeizu_jcifs/smb/ACE;->sid:Lmeizu_jcifs/smb/SID;

    .line 153
    return v1

    .line 146
    .end local v1           #size:I
    .end local p2
    .restart local v0       #bi:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAccessMask()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lmeizu_jcifs/smb/ACE;->access:I

    return v0
.end method

.method public getApplyToText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lmeizu_jcifs/smb/ACE;->flags:I

    and-int/lit8 v0, v0, 0xb

    packed-switch v0, :pswitch_data_0

    .line 126
    :pswitch_0
    const-string v0, "Invalid"

    :goto_0
    return-object v0

    .line 112
    :pswitch_1
    const-string v0, "This folder only"

    goto :goto_0

    .line 114
    :pswitch_2
    const-string v0, "This folder, subfolders and files"

    goto :goto_0

    .line 116
    :pswitch_3
    const-string v0, "Subfolders and files only"

    goto :goto_0

    .line 118
    :pswitch_4
    const-string v0, "This folder and subfolders"

    goto :goto_0

    .line 120
    :pswitch_5
    const-string v0, "Subfolders only"

    goto :goto_0

    .line 122
    :pswitch_6
    const-string v0, "This folder and files"

    goto :goto_0

    .line 124
    :pswitch_7
    const-string v0, "Files only"

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lmeizu_jcifs/smb/ACE;->flags:I

    return v0
.end method

.method public getSID()Lmeizu_jcifs/smb/SID;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lmeizu_jcifs/smb/ACE;->sid:Lmeizu_jcifs/smb/SID;

    return-object v0
.end method

.method public isAllow()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lmeizu_jcifs/smb/ACE;->allow:Z

    return v0
.end method

.method public isInherited()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lmeizu_jcifs/smb/ACE;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lmeizu_jcifs/smb/ACE;->isAllow()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Allow "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-object v1, p0, Lmeizu_jcifs/smb/ACE;->sid:Lmeizu_jcifs/smb/SID;

    invoke-virtual {v1}, Lmeizu_jcifs/smb/SID;->toDisplayString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {p0, v0, v1, v2}, Lmeizu_jcifs/smb/ACE;->appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 176
    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/ACE;->access:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0}, Lmeizu_jcifs/smb/ACE;->isInherited()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Inherited "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p0}, Lmeizu_jcifs/smb/ACE;->getApplyToText()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {p0, v0, v1, v2}, Lmeizu_jcifs/smb/ACE;->appendCol(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    :cond_0
    const-string v1, "Deny  "

    goto :goto_0

    .line 177
    :cond_1
    const-string v1, "Direct    "

    goto :goto_1
.end method
