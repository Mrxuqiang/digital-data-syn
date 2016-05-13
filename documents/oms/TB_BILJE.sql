/*
================================================================================
��ṹ����:TB_BILJE
��ṹ����:����/��Ӫ���˵�����/���˿���ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILJE;
drop index AK_TB_BILJE;
drop table TB_BILJE;
create table TB_BILJE  (
   BILJE_ID             INTEGER                      not null,        /*����/��Ӫ�ɹ�����/���˵�����ϸID*/ 
   BILJE001             INTEGER                      not null,        /*���˵�ID                   */ 
   BILJE002             INTEGER                      not null,        /*����/������ϸID            */ 
   BILJE003             INTEGER                      not null,        /*���ݺ���ID                 */ 
   BILJE004             INTEGER                      not null,        /*��Դ������ϸID             */ 
   BILJE005             INTEGER                      not null,        /*��Ʒ����                   */ 
   BILJE006             INTEGER,                                      /* ά��1                     */  
   BILJE007             INTEGER,                                      /* ά��2                     */  
   BILJE008             INTEGER,                                      /* ά��3                     */     
   BILJE009             INTEGER,                                      /* ά��4                     */  
   BILJE010             INTEGER,                                      /* ά��5                     */  
   BILJE011             INTEGER                      not null,        /*�ֿ�                       */ 
   BILJE012             INTEGER                      not null,        /*�ֿ�                       */ 
   BILJE013             INTEGER                      not null,        /*��ⵥλ                   */ 
   BILJE014             NUMBER(12,2)                 not null,        /*��λ������                 */ 
   BILJE015             NUMBER(18,3)                 not null,        /*������                     */ 
   BILJE016             NUMBER(12,2)                 not null,        /*˰ǰ����                   */ 
   BILJE017             NUMBER(12,2)                 not null,        /*��˰����                   */ 
   BILJE018             INTEGER                      not null,        /*˰��                       */ 
   BILJE019             NUMBER(12,2)                 not null,        /*˰��                       */ 
   BILJE020             NUMBER(12,2)                 not null,        /*˰ǰ���                   */ 
   BILJE021             NUMBER(12,2)                 not null,        /*��˰���                   */
   BILJE022             NUMBER(18,3)                 not null,        /*�ѽ�����                  */
   CREATE_USER          VARCHAR2(12),                                 /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                 /*������Ա����        */                               
   CREATE_DATE          DATE,                                         /*��������            */
   MODIFIER             VARCHAR2(12),                                 /*�޸���Ա            */
   MODI_DATE            DATE,                                         /*�޸�����            */
   FLAG                 NUMBER(1),                                    /*����״̬            */
   constraint PK_TB_BILJE primary key (BILJE_ID)
);
create unique index AK_TB_BILJE on TB_BILJE (BILJE003,BILJE005);
create sequence SEQ_TB_BILJE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJE to public;
grant index  on TB_BILJE to public;
grant update on TB_BILJE to public; 
grant delete on TB_BILJE to public;  
grant insert on TB_BILJE to public; 
grant select on SEQ_TB_BILJE to public;   