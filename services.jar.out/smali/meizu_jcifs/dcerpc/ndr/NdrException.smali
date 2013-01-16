.class public Lmeizu_jcifs/dcerpc/ndr/NdrException;
.super Ljava/io/IOException;
.source "NdrException.java"


# static fields
.field public static final INVALID_CONFORMANCE:Ljava/lang/String; = "invalid array conformance"

.field public static final NO_NULL_REF:Ljava/lang/String; = "ref pointer cannot be null"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
