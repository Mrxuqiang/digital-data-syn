/*
================================================================================
��ṹ����:TB_SALEK
��ṹ����:����̨������ܵ���ǰ��ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALEK;
drop index AK_TB_SALEK;
drop table TB_SALEK;
create table TB_SALEK  (
   SALEK_ID             INTEGER                         not null,  /*�״��ս�����̨��ϢID         */
   SALEK001             INTEGER,                                   /*Ӫ����֯ID                   */
   SALEK002             DATE,                                      /*��������                     */ 
   SALEK003             VARCHAR(1),                                /*��������                     */
   SALEK004             INTEGER,                                   /*����ԱID                     */
   SALEK005             VARCHAR(1),                                /*��������                     */
   SALEK006             VARCHAR(30),                               /*���۵���                     */
   SALEK007             VARCHAR(30),                               /*����ƾ֤                     */
   SALEK008             VARCHAR(30),                               /*�����                     */
   SALEK009             VARCHAR(1),                                /*�Ƿ�μӴ���                 */
   SALEK010             DATE,                                      /*��������                     */ 
   SALEK011             VARCHAR(30),                               /*����ƾ֤                     */
   SALEK012             INTEGER,                                   /*̯λID                       */
   SALEK013             INTEGER,                                   /*�̻�ID                       */
   SALEK014             INTEGER,                                   /*�̻�����                     */
   SALEK015             INTEGER,                                   /*Ʒ��                         */
   SALEK016             INTEGER,                                   /*���޺�ͬ��                   */
   SALEK017             NUMBER(28,2),                              /*���۽��                     */
   SALEK018             NUMBER(28,2),                              /*�ۿ۽��                     */
   SALEK019             INTEGER,                                   /*�ո��ʽ                   */
   SALEK020             NUMBER(28,2),                              /*ʵ������                   */
   SALEK021             NUMBER(28,2),                              /*������                       */
   SALEK022             NUMBER(28,2),                              /*���ս��                     */
   SALEK023             VARCHAR(1),                                /*����״̬                     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                     */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                 */                               
   CREATE_DATE          DATE,                                      /*��������                     */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                     */
   MODI_DATE            DATE,                                      /*�޸�����                     */
   FLAG                 NUMBER,                                    /*����״̬                     */
   constraint PK_TB_SALEK primary key (SALEK_ID)
);
create unique index AK_TB_SALEK on TB_SALEK (SALEK001,SALEK002,FLAG);
create sequence SEQ_TB_SALEK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEK to public;
grant index  on TB_SALEK to public;
grant update on TB_SALEK to public; 
grant delete on TB_SALEK to public;  
grant insert on TB_SALEK to public; 
grant select on SEQ_TB_SALEK to public;   