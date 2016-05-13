/*
================================================================================
��ṹ����:TB_BILHE
��ṹ����:�������˵���/�˿���ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILHE;
drop index AK_TB_BILHE;
drop table TB_BILHE;
create table TB_BILHE  (
   BILHE_ID             INTEGER                      not null,        /*�����ɹ����/�˿ⵥ����ϸID*/ 
   BILHE001             INTEGER                      not null,        /*���˵�ID                   */ 
   BILHE002             INTEGER                      not null,        /*���/�˻���ϸID            */ 
   BILHE003             VARCHAR2(30)                 not null,        /*���ݺ���                   */ 
   BILHE004             INTEGER                      not null,        /*��Դ������ϸID             */ 
   BILHE005             INTEGER                      not null,        /*��Ʒ����                   */ 
   BILHE006             INTEGER,                                      /* ά��1                     */  
   BILHE007             INTEGER,                                      /* ά��2                     */  
   BILHE008             INTEGER,                                      /* ά��3                     */     
   BILHE009             INTEGER,                                      /* ά��4                     */  
   BILHE010             INTEGER,                                      /* ά��5                     */  
   BILHE011             INTEGER                      not null,        /*�ֿ�                       */ 
   BILHE012             INTEGER                      not null,        /*�ֿ�                       */ 
   BILHE013             INTEGER                      not null,        /*��ⵥλ                   */ 
   BILHE014             NUMBER(12,2)                 not null,        /*��λ������                 */ 
   BILHE015             NUMBER(18,3)                 not null,        /*�����                     */ 
   BILHE016             NUMBER(18,3)                 not null,        /*�ۿ���                     */ 
   BILHE017             NUMBER(18,3)                 not null,        /*������                     */ 
   BILHE018             NUMBER(12,2)                 not null,        /*˰ǰ����                   */ 
   BILHE019             NUMBER(12,2)                 not null,        /*��˰����                   */ 
   BILHE020             INTEGER                      not null,        /*˰��                       */ 
   BILHE021             NUMBER(12,2)                 not null,        /*˰��                       */ 
   BILHE022             NUMBER(12,2)                 not null,        /*˰ǰ���                   */ 
   BILHE023             NUMBER(12,2)                 not null,        /*��˰���                   */ 
   CREATE_USER          VARCHAR2(12),                                 /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����        */                               
   CREATE_DATE          DATE,                                         /*��������            */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա            */
   MODI_DATE            DATE,                                         /*�޸�����            */
   FLAG                 NUMBER(1),                                    /*����״̬            */
   constraint PK_TB_BILHE primary key (BILHE_ID)
);
create unique index AK_TB_BILHE on TB_BILHE (BILHE003,BILHE005);
create sequence SEQ_TB_BILHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHE to public;
grant index  on TB_BILHE to public;
grant update on TB_BILHE to public; 
grant delete on TB_BILHE to public;  
grant insert on TB_BILHE to public; 
grant select on SEQ_TB_BILHE to public;   