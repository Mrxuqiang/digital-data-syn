/*
================================================================================
��ṹ����:TB_PAYAI
��ṹ����:Ԥ���ջ���ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PAYAI;
drop index AK_TB_PAYAI;
drop table TB_PAYAI;
create table TB_PAYAI  (
   PAYAI_ID             INTEGER                         not null,  /*�ջ���ϸ��ID     */
   PAYAI001             INTEGER                         not null,  /*�ջ�����ID       */
   PAYAI002             VARCHAR2(1)                     not null,  /*��Դ             */
   PAYAI003             INTEGER                         not null,  /*Ԥ�����ֵ���     */
   PAYAI004             INTEGER,                                   /*�ɹ�����         */
   PAYAI005             VARCHAR2(1)                     not null,  /*���㷽ʽ         */ 
   PAYAI006             INTEGER                         not null,  /*��֧�춯��       */ 
   PAYAI007             INTEGER,                                   /*��Ŀ             */ 
   PAYAI008             INTEGER                         not null,  /*�����˺�         */ 
   PAYAI009             NUMBER(16,2),                              /*ԭ�ҽ��         */
   PAYAI010             NUMBER(16,2),                              /*ԭ�ҿ��ջؽ��   */ 
   PAYAI011             NUMBER(16,2),                              /*ԭ���ջؽ��     */ 
   PAYAI012             NUMBER(16,2),                               /*���ҽ��         */ 
   PAYAI013             NUMBER(16,2),                              /*���ҿ��ջض�     */ 
   PAYAI014             NUMBER(16,2),                              /*�����ջؽ��     */    
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PAYAI primary key (PAYAI_ID)
);
create sequence SEQ_TB_PAYAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAI to public;
grant index  on TB_PAYAI to public;
grant update on TB_PAYAI to public; 
grant delete on TB_PAYAI to public;  
grant insert on TB_PAYAI to public; 
grant select on SEQ_TB_PAYAI to public;   