.class public Lcom/meizu/widget/RecipientEmailHistory;
.super Ljava/lang/Object;
.source "RecipientEmailHistory.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final FREQUENCE:Ljava/lang/String; = "frequence"

.field public static final LAST_TIME:Ljava/lang/String; = "last_time"

.field public static final TABLE_NAME:Ljava/lang/String; = "email"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearHistory(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v1, Lcom/meizu/widget/RecipientDbHelper;

    invoke-direct {v1, p0}, Lcom/meizu/widget/RecipientDbHelper;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, dbHelper:Lcom/meizu/widget/RecipientDbHelper;
    invoke-virtual {v1}, Lcom/meizu/widget/RecipientDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "email"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    invoke-virtual {v1}, Lcom/meizu/widget/RecipientDbHelper;->close()V

    .line 112
    return-void
.end method

.method private static removeExpiredEntries(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "_id IN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "(SELECT _id FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "last_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " DESC LIMIT -1 OFFSET 500)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 101
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "email"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public static varargs saveHistory(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "entries"

    .prologue
    .line 37
    new-instance v0, Lcom/meizu/widget/RecipientDbHelper;

    invoke-direct {v0, p0}, Lcom/meizu/widget/RecipientDbHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, dbHelper:Lcom/meizu/widget/RecipientDbHelper;
    invoke-static {v0, p1}, Lcom/meizu/widget/RecipientEmailHistory;->saveHistory(Lcom/meizu/widget/RecipientDbHelper;[Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/meizu/widget/RecipientDbHelper;->close()V

    .line 40
    return-void
.end method

.method public static varargs saveHistory(Lcom/meizu/widget/RecipientDbHelper;[Ljava/lang/String;)V
    .locals 19
    .parameter "dbHelper"
    .parameter "entries"

    .prologue
    .line 48
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/RecipientDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 53
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 55
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 56
    aget-object v3, p1, v16

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, entry:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v13, v14, v3

    .line 58
    .local v13, email:Ljava/lang/String;
    array-length v3, v14

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    const/4 v3, 0x1

    aget-object v17, v14, v3

    .line 59
    .local v17, name:Ljava/lang/String;
    :goto_2
    const-string v3, "email"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "frequence"

    aput-object v6, v4, v5

    const-string v5, "email=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 65
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 66
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 67
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 68
    .local v10, _id:J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v15, v3, 0x1

    .line 69
    .local v15, frequence:I
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v18, values:Landroid/content/ContentValues;
    const-string v3, "display_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "frequence"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v3, "last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v3, "email"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    .end local v10           #_id:J
    .end local v15           #frequence:I
    :goto_3
    if-eqz v12, :cond_2

    .line 87
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 58
    .end local v12           #c:Landroid/database/Cursor;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v17, ""

    goto :goto_2

    .line 78
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v17       #name:Ljava/lang/String;
    :cond_4
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .restart local v18       #values:Landroid/content/ContentValues;
    const-string v3, "email"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "display_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "frequence"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v3, "last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string v3, "email"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 91
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #email:Ljava/lang/String;
    .end local v14           #entry:[Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-static {v2}, Lcom/meizu/widget/RecipientEmailHistory;->removeExpiredEntries(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 93
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method
