.class public abstract Landroid/app/backup/BackupObserver;
.super Ljava/lang/Object;
.source "BackupObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method backupFinished(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 11
    return-void
.end method

.method backupStarting(I)V
    .locals 0
    .parameter "numPackages"

    .prologue
    .line 5
    return-void
.end method

.method onBackuping(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 8
    return-void
.end method
