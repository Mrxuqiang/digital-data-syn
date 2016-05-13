/*
================================================================================
��ṹ����:TB_PAYAF
��ṹ����:������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAF;
drop index AK_TB_PAYAF;
drop table TB_PAYAF;
create table TB_PAYAF  (
   PAYAF_ID             INTEGER                         not null,  /*������ϸID     */
   PAYAF001             INTEGER                         not null,  /*��������ID   */
   PAYAF002             VARCHAR2(1)                     not null,  /*���ʽ       */
   PAYAF003             INTEGER                         not null,  /*��֧�춯��     */
   PAYAF004             INTEGER,                                   /*��ƿ�Ŀ       */ 
   PAYAF005             NUMBER(16,2),                              /*ԭ�Ҹ�����   */ 
   PAYAF006             NUMBER(16,2),                              /*���Ҹ�����   */ 
   PAYAF007             INTEGER,                                   /*�����˺�       */    
   PAYAF008             VARCHAR2(255),                             /*��ע           */     
   PAYAF009             NUMBER(16,2),                              /*ԭ���Ѻ������   */ 
   PAYAF010             NUMBER(16,2),                              /*�����Ѻ������   */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PAYAF primary key (PAYAF_ID)
);
create sequence SEQ_TB_PAYAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAF to public;
grant index  on TB_PAYAF to public;
grant update on TB_PAYAF to public; 
grant delete on TB_PAYAF to public;  
grant insert on TB_PAYAF to public; 
grant select on SEQ_TB_PAYAF to public;   