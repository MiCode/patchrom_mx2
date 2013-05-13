.class Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "IccProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyCursorWrapper"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCursor:Landroid/database/CrossProcessCursor;

.field final synthetic this$0:Lcom/android/internal/telephony/IccProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccProvider;Landroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "cursor"
    .parameter "bundle"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;->this$0:Lcom/android/internal/telephony/IccProvider;

    .line 703
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 704
    check-cast p2, Landroid/database/CrossProcessCursor;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    .line 705
    iput-object p3, p0, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;->mBundle:Landroid/os/Bundle;

    .line 706
    return-void
.end method


# virtual methods
.method public commitUpdates()Z
    .locals 2

    .prologue
    .line 713
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Download manager cursors are read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteRow()Z
    .locals 2

    .prologue
    .line 709
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Download manager cursors are read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 718
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
