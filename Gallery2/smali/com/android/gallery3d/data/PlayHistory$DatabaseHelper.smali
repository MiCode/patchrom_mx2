.class final Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PlayHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/PlayHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/PlayHistory;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/PlayHistory;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->this$0:Lcom/android/gallery3d/data/PlayHistory;

    .line 190
    const-string v0, "history.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 191
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 195
    sget-object v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 196
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 201
    sget-object v0, Lcom/android/gallery3d/data/PlayHistory$HistoryEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/PlayHistory$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 203
    return-void
.end method
