/*
================================================================================
��ṹ����:TB_CONCG
��ṹ����:��ͬ��������Ա��������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCG;
drop index AK_TB_CONCG;
drop table TB_CONCG;
create table TB_CONCG  (
   CONCG_ID             INTEGER                         not null,  /*��ͬ��������Ա���������ϸID*/
   CONCG001             INTEGER                         not null,  /*��ͬ���ID                  */
   CONCG002             INTEGER                         not null,  /*��ͬ��������Ա�������ID    */
   CONCG003             DATE                            not null,  /*��ʼ����			 */
   CONCG004             DATE                            not null,  /*��������			 */
   CONCG005             NUMBER(12,2)                    not null,  /*��׼��			 */
   CONCG006             NUMBER(12,2),                              /*��׼ֹ			 */
   CONCG007             NUMBER(12,2)                    not null,  /*��׼����(%)		 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա			 */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����		 */                               
   CREATE_DATE          DATE,                                      /*��������			 */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա			 */
   MODI_DATE            DATE,                                      /*�޸�����			 */
   FLAG                 NUMBER(1),                                 /*����״̬			 */
   constraint PK_TB_CONCG primary key (CONCG_ID)
);
create unique index AK_TB_CONCG on TB_CONCG (CONCG001,CONCG002,CONCG003,CONCG005);
create sequence SEQ_TB_CONCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCG to public;
grant index  on TB_CONCG to public;
grant update on TB_CONCG to public; 
grant delete on TB_CONCG to public;  
grant insert on TB_CONCG to public; 
grant select on SEQ_TB_CONCG to public;   