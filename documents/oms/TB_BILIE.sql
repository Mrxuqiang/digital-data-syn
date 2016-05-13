/*
================================================================================
��ṹ����:TB_BILIE
��ṹ����:�ɱ��������˵�����/���˿���ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIE;
drop index AK_TB_BILIE;
drop table TB_BILIE;
create table TB_BILIE  (
   BILIE_ID             INTEGER                      not null,        /*�ɱ������ɹ�����/���˵�����ϸID*/ 
   BILIE001             INTEGER                      not null,        /*���˵�ID                   */ 
   BILIE002             INTEGER                      not null,        /*���/�˻���ϸID            */ 
   BILIE003             VARCHAR2(30)                 not null,        /*���ݺ���                   */ 
   BILIE004             INTEGER                      not null,        /*��Դ������ϸID             */ 
   BILIE005             INTEGER                      not null,        /*��Ʒ����                   */ 
   BILIE006             INTEGER,                                      /* ά��1                     */  
   BILIE007             INTEGER,                                      /* ά��2                     */  
   BILIE008             INTEGER,                                      /* ά��3                     */     
   BILIE009             INTEGER,                                      /* ά��4                     */  
   BILIE010             INTEGER,                                      /* ά��5                     */  
   BILIE011             INTEGER                      not null,        /*�ֿ�                       */ 
   BILIE012             INTEGER                      not null,        /*�ֿ�                       */ 
   BILIE013             INTEGER                      not null,        /*��ⵥλ                   */ 
   BILIE014             NUMBER(12,2)                 not null,        /*��λ������                 */ 
   BILIE015             NUMBER(18,3)                 not null,        /*������                     */ 
   BILIE016             NUMBER(12,2)                 not null,        /*˰ǰ����                   */ 
   BILIE017             NUMBER(12,2)                 not null,        /*��˰����                   */ 
   BILIE018             INTEGER                      not null,        /*˰��                       */ 
   BILIE019             NUMBER(12,2)                 not null,        /*˰��                       */ 
   BILIE020             NUMBER(12,2)                 not null,        /*˰ǰ���                   */ 
   BILIE021             NUMBER(12,2)                 not null,        /*��˰���                   */ 
   BILIE022             NUMBER(18,3)                 not null,        /*�ѽ�����                   */  
   CREATE_USER          VARCHAR2(12),                                 /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����        */                               
   CREATE_DATE          DATE,                                         /*��������            */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա            */
   MODI_DATE            DATE,                                         /*�޸�����            */
   FLAG                 NUMBER(1),                                    /*����״̬            */
   constraint PK_TB_BILIE primary key (BILIE_ID)
);
create unique index AK_TB_BILIE on TB_BILIE (BILIE003,BILIE005);
create sequence SEQ_TB_BILIE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIE to public;
grant index  on TB_BILIE to public;
grant update on TB_BILIE to public; 
grant delete on TB_BILIE to public;  
grant insert on TB_BILIE to public; 
grant select on SEQ_TB_BILIE to public;   