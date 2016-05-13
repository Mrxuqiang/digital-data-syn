/*
================================================================================
��ṹ����:TB_BILAQ
��ṹ����:�����Żݷ�̯��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILAQ;
drop index AK_TB_BILAQ;
drop table TB_BILAQ;
create table TB_BILAQ  (
   BILAQ_ID             INTEGER                         not null,  /*�����Żݷ�̯����id       */
   BILAQ001             INTEGER                         not null,  /*����id                   */
   BILAQ002             VARCHAR2(30)                    not null,  /*����                     */
   BILAQ003             DATE                            not null,  /*����                     */
   BILAQ004             INTEGER,                                   /*�̳�id                   */
   BILAQ005             VARCHAR2(255),                             /*��ע                     */
   BILAQ006             INTEGER,                                   /*¼����id                 */
   BILAQ007             DATE,                                      /*¼������                 */
   BILAQ008             VARCHAR2(1),                               /*����״̬                 */
   BILAQ009             INTEGER,                                   /*�����id                 */
   BILAQ010             DATE,                                      /*�������                 */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_BILAQ primary key (BILAQ_ID)
);
create unique index AK_TB_BILAQ on TB_BILAQ (BILAQ001,BILAQ002,BILAQ004,FLAG);
create sequence SEQ_TB_BILAQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAQ to public;
grant index  on TB_BILAQ to public;
grant update on TB_BILAQ to public; 
grant delete on TB_BILAQ to public;  
grant insert on TB_BILAQ to public; 
grant select on SEQ_TB_BILAQ to public;   