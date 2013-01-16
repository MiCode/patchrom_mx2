.class public Lmeizu_jcifs/util/LogStream;
.super Ljava/io/PrintStream;
.source "LogStream.java"


# static fields
.field private static inst:Lmeizu_jcifs/util/LogStream;

.field public static level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput v0, Lmeizu_jcifs/util/LogStream;->level:I

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    return-void
.end method

.method public static getInstance()Lmeizu_jcifs/util/LogStream;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lmeizu_jcifs/util/LogStream;->inst:Lmeizu_jcifs/util/LogStream;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lmeizu_jcifs/util/LogStream;->setInstance(Ljava/io/PrintStream;)V

    .line 55
    :cond_0
    sget-object v0, Lmeizu_jcifs/util/LogStream;->inst:Lmeizu_jcifs/util/LogStream;

    return-object v0
.end method

.method public static setInstance(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 49
    new-instance v0, Lmeizu_jcifs/util/LogStream;

    invoke-direct {v0, p0}, Lmeizu_jcifs/util/LogStream;-><init>(Ljava/io/PrintStream;)V

    sput-object v0, Lmeizu_jcifs/util/LogStream;->inst:Lmeizu_jcifs/util/LogStream;

    .line 50
    return-void
.end method

.method public static setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 42
    sput p0, Lmeizu_jcifs/util/LogStream;->level:I

    .line 43
    return-void
.end method
